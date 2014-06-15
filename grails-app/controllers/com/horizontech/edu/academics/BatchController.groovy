package com.horizontech.edu.academics

import org.springframework.dao.DataIntegrityViolationException

import com.horizontech.edu.common.UserInfoService;

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class BatchController {

	UserInfoService userInfoService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		params.sort = "course"
        [batchInstanceList: Batch.findAllByCourseInList(userInfoService.courseList ,params), batchInstanceTotal: Batch.count()]
    }

    def create() {
        [batchInstance: new Batch(params)]
		[courseList:userInfoService.courseList]
    }

    def save() {
        def batchInstance = new Batch(params)
        if (!batchInstance.save(flush: true)) {
            render(view: "create", model: [batchInstance: batchInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'batch.label', default: 'Batch'), batchInstance.id])
        redirect(action: "show", id: batchInstance.id)
    }

    def show(Long id) {
        def batchInstance = Batch.get(id)
        if (!batchInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'batch.label', default: 'Batch'), id])
            redirect(action: "list")
            return
        }

        [batchInstance: batchInstance]
    }

    def edit(Long id) {
        def batchInstance = Batch.get(id)
        if (!batchInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'batch.label', default: 'Batch'), id])
            redirect(action: "list")
            return
        }

        [batchInstance: batchInstance]
    }

    def update(Long id, Long version) {
        def batchInstance = Batch.get(id)
        if (!batchInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'batch.label', default: 'Batch'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (batchInstance.version > version) {
                batchInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'batch.label', default: 'Batch')] as Object[],
                          "Another user has updated this Batch while you were editing")
                render(view: "edit", model: [batchInstance: batchInstance])
                return
            }
        }

        batchInstance.properties = params

        if (!batchInstance.save(flush: true)) {
            render(view: "edit", model: [batchInstance: batchInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'batch.label', default: 'Batch'), batchInstance.id])
        redirect(action: "show", id: batchInstance.id)
    }

    def delete(Long id) {
        def batchInstance = Batch.get(id)
        if (!batchInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'batch.label', default: 'Batch'), id])
            redirect(action: "list")
            return
        }

        try {
            batchInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'batch.label', default: 'Batch'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'batch.label', default: 'Batch'), id])
            redirect(action: "show", id: id)
        }
    }
}
