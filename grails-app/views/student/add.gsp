<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Student Admission</title>
	 <meta name="layout" content="main" />
	 <r:require modules="core"/>
	    
    <script>
        $(document).ready(function(){
             var fieldSetIndex = 0;

        var fsArray = $("fieldset");
        var fsid = fsArray[fieldSetIndex].getAttribute("id");
        $("#"+fsid).addClass("active");


        $(".next-button").click(function(){
            var currentFs, nextFs;
            var opacity=1;

                currentFs = $(this).parent();
                nextFs = $(this).parent().next();
                currentFs.animate({
                    opacity: 0
                }, 800, function () {
                    currentFs.removeClass("active");

                    nextFs.addClass("active").css({"opacity":1});
                });


        });

        $(".previous-button").click(function(){
            var currentFs, previousFs;
            var opacity=1;

            currentFs = $(this).parent();
            previousFs = currentFs.prev();
            currentFs.animate({
                opacity: 0
            }, 800, function () {
                currentFs.removeClass("active");
                previousFs.addClass("active").css({"opacity":1});
            });


        });
    });
    </script>
</head>
<body>
   <div class="wrapper" id="wrapper">
       <div class="student-content-box">
       <div class=" student-fset">
                <form>
               <fieldset id="firstFs">
                   <legend>Admission Details</legend>
                   <div class="col-1 span-1">
                   <input type="number" name="admissionNumber" placeholder="Admission Number" required="true"/>
                       <label>Admission Date</label>
                   <input type="date" name="admissionDate" placeholder="Admission Date"/>
                   <input type="text" name="firstname" placeholder="First Name"/>
                   <input type="text" name="middlename" placeholder="Middle Name"/>
                   <input type="text" name="lastname" placeholder="Last Name"/>

                   </div>
                   <input type="button" class="next-button" id="next-button"  value="Next"/>
                 </fieldset>

               <fieldset id="secondFs">
                   <legend>Personal Information</legend>
                   <div class="col-1 span-1">

                       <input type="text" name="address1" placeholder="Address 1"/>
                       <input type="text" name="address2" placeholder="Address 2"/>
                       <input type="text" name="city" placeholder="City"/>
                       <input type="text" name="postcode" placeholder="Postcode"/>
                       <input type="text" name="state" placeholder="State"/>
                       <!--<label>Country</label>-->
                       <select class="select-combo-box" id="country_id" name="student[country_id]">
                       <option value="425">Afghanistan (‫افغانستان‬‎)</option>
                       <option value="656">Åland Islands (Åland)</option>
                       <option value="426">Albania (Shqipëria)</option>
                       <option value="427">Algeria (‫الجزائر‬‎)</option>
                       <option value="644">American Samoa</option>
                       <option value="428">Andorra</option>
                       <option value="429">Angola</option>
                       <option value="668">Anguilla</option>
                       <option value="681">Antarctica</option>
                       <option value="430">Antigua and Barbuda</option>
                       <option value="431">Argentina</option>
                       <option value="432">Armenia (Հայաստան)</option>
                       <option value="647">Aruba</option>
                       <option value="646">Ascension Island</option>
                       <option value="433">Australia</option>
                       <option value="434">Austria (Österreich)</option>
                       <option value="435">Azerbaijan (Azərbaycan)</option>
                       <option value="436">Bahamas</option>
                       <option value="437">Bahrain (‫البحرين‬‎)</option>
                       <option value="438">Bangladesh (বাংলাদেশ)</option>
                       <option value="439">Barbados</option>
                       <option value="440">Belarus (Беларусь)</option>
                       <option value="441">Belgium (België)</option>
                       <option value="442">Belize</option>
                       <option value="443">Benin (Bénin)</option>
                       <option value="666">Bermuda</option>
                       <option value="444">Bhutan (འབྲུག)</option>
                       <option value="445">Bolivia</option>
                       <option value="446">Bosnia and Herzegovina (Босна и Херцеговина)</option>
                       <option value="447">Botswana</option>
                       <option value="652">Bouvet Island</option>
                       <option value="448">Brazil (Brasil)</option>
                       <option value="639">British Indian Ocean Territory</option>
                       <option value="671">British Virgin Islands</option>
                       <option value="449">Brunei</option>
                       <option value="450">Bulgaria (България)</option>
                       <option value="451">Burkina Faso</option>
                       <option value="453">Burundi (Uburundi)</option>
                       <option value="455">Cambodia (កម្ពុជា)</option>
                       <option value="456">Cameroon (Cameroun)</option>
                       <option value="457">Canada</option>
                       <option value="665">Canary Islands (Islas Canarias)</option>
                       <option value="458">Cape Verde (Kabu Verdi)</option>
                       <option value="558">Caribbean Netherlands</option>
                       <option value="690">Cayman Islands</option>
                       <option value="459">Central African Republic (République centrafricaine)</option>
                       <option value="674">Ceuta and Melilla (Ceuta y Melilla)</option>
                       <option value="460">Chad (Tchad)</option>
                       <option value="461">Chile</option>
                       <option value="462">China (中国)</option>
                       <option value="682">Christmas Island</option>
                       <option value="637">Clipperton Island (Île Clipperton)</option>
                       <option value="664">Cocos [Keeling] Islands</option>
                       <option value="463">Colombia</option>
                       <option value="464">Comoros (‫جزر القمر‬‎)</option>
                       <option value="475">Congo [DRC] (Jamhuri ya Kidemokrasia ya Kongo)</option>
                       <option value="577">Congo [Republic] (Congo-Brazzaville)</option>
                       <option value="467">Cook Islands</option>
                       <option value="468">Costa Rica</option>
                       <option value="473">Côte d’Ivoire</option>
                       <option value="469">Croatia (Hrvatska)</option>
                       <option value="470">Cuba</option>
                       <option value="667">Curaçao</option>
                       <option value="471">Cyprus (Κύπρος)</option>
                       <option value="472">Czech Republic (Česká republika)</option>
                       <option value="476">Denmark (Danmark)</option>
                       <option value="657">Diego Garcia</option>
                       <option value="477">Djibouti</option>
                       <option value="478">Dominica</option>
                       <option value="479">Dominican Republic (República Dominicana)</option>
                       <option value="481">Ecuador</option>
                       <option value="482">Egypt (‫مصر‬‎)</option>
                       <option value="483">El Salvador</option>
                       <option value="484">Equatorial Guinea (Guinea Ecuatorial)</option>
                       <option value="485">Eritrea</option>
                       <option value="486">Estonia (Eesti)</option>
                       <option value="487">Ethiopia</option>
                       <option value="689">Falkland Islands [Islas Malvinas]</option>
                       <option value="685">Faroe Islands (Føroyar)</option>
                       <option value="489">Fiji</option>
                       <option value="490">Finland (Suomi)</option>
                       <option value="491">France</option>
                       <option value="653">French Guiana (Guyane française)</option>
                       <option value="659">French Polynesia (Polynésie française)</option>
                       <option value="672">French Southern Territories (Terres australes françaises)</option>
                       <option value="492">Gabon</option>
                       <option value="493">Gambia</option>
                       <option value="494">Georgia (საქართველო)</option>
                       <option value="495">Germany (Deutschland)</option>
                       <option value="496">Ghana (Gaana)</option>
                       <option value="649">Gibraltar</option>
                       <option value="497">Greece (Ελλάδα)</option>
                       <option value="648">Greenland (Kalaallit Nunaat)</option>
                       <option value="498">Grenada</option>
                       <option value="640">Guadeloupe</option>
                       <option value="643">Guam</option>
                       <option value="499">Guatemala</option>
                       <option value="678">Guernsey</option>
                       <option value="500">Guinea (Guinée)</option>
                       <option value="501">Guinea-Bissau (Guiné Bissau)</option>
                       <option value="502">Guyana</option>
                       <option value="503">Haiti</option>
                       <option value="645">Heard Island and McDonald Islands</option>
                       <option value="504">Honduras</option>
                       <option value="687">Hong Kong (香港)</option>
                       <option value="505">Hungary (Magyarország)</option>
                       <option value="506">Iceland (Ísland)</option>
                       <option value="76" selected="selected">India (भारत)</option>
                       <option value="508">Indonesia</option>
                       <option value="509">Iran (‫ایران‬‎)</option>
                       <option value="510">Iraq (‫العراق‬‎)</option>
                       <option value="511">Ireland</option>
                       <option value="655">Isle of Man</option>
                       <option value="512">Israel (‫ישראל‬‎)</option>
                       <option value="513">Italy (Italia)</option>
                       <option value="515">Jamaica</option>
                       <option value="516">Japan (日本)</option>
                       <option value="638">Jersey</option>
                       <option value="517">Jordan (‫الأردن‬‎)</option>
                       <option value="518">Kazakhstan (Казахстан)</option>
                       <option value="519">Kenya</option>
                       <option value="520">Kiribati</option>
                       <option value="523">Kosovo (Косово)</option>
                       <option value="524">Kuwait (‫الكويت‬‎)</option>
                       <option value="525">Kyrgyzstan</option>
                       <option value="526">Laos (ສ.ປ.ປ ລາວ)</option>
                       <option value="527">Latvia (Latvija)</option>
                       <option value="528">Lebanon (‫لبنان‬‎)</option>
                       <option value="529">Lesotho</option>
                       <option value="530">Liberia</option>
                       <option value="531">Libya (‫ليبيا‬‎)</option>
                       <option value="532">Liechtenstein</option>
                       <option value="533">Lithuania (Lietuva)</option>
                       <option value="534">Luxembourg</option>
                       <option value="670">Macau (澳門)</option>
                       <option value="535">Macedonia [FYROM] (Македонија)</option>
                       <option value="536">Madagascar (Madagasikara)</option>
                       <option value="537">Malawi</option>
                       <option value="538">Malaysia</option>
                       <option value="539">Maldives</option>
                       <option value="540">Mali</option>
                       <option value="541">Malta</option>
                       <option value="542">Marshall Islands</option>
                       <option value="650">Martinique</option>
                       <option value="543">Mauritania (‫موريتانيا‬‎)</option>
                       <option value="544">Mauritius (Moris)</option>
                       <option value="658">Mayotte</option>
                       <option value="545">Mexico (México)</option>
                       <option value="546">Micronesia</option>
                       <option value="547">Moldova (Republica Moldova)</option>
                       <option value="548">Monaco</option>
                       <option value="549">Mongolia (Монгол)</option>
                       <option value="550">Montenegro (Crna Gora)</option>
                       <option value="662">Montserrat</option>
                       <option value="551">Morocco (‫المغرب‬‎)</option>
                       <option value="552">Mozambique (Moçambique)</option>
                       <option value="452">Myanmar [Burma] (မြန်မာ)</option>
                       <option value="554">Nagorno-Karabakh</option>
                       <option value="555">Namibia</option>
                       <option value="556">Nauru</option>
                       <option value="557">Nepal (नेपाल)</option>
                       <option value="660">Netherlands (Nederland)</option>
                       <option value="673">New Caledonia (Nouvelle-Calédonie)</option>
                       <option value="559">New Zealand</option>
                       <option value="560">Nicaragua</option>
                       <option value="561">Niger (Nijar)</option>
                       <option value="562">Nigeria</option>
                       <option value="642">Niue</option>
                       <option value="676">Norfolk Island</option>
                       <option value="474">North Korea (조선 민주주의 인민 공화국)</option>
                       <option value="679">Northern Mariana Islands</option>
                       <option value="563">Norway (Norge)</option>
                       <option value="564">Oman (‫عُمان‬‎)</option>
                       <option value="565">Pakistan (‫پاکستان‬‎)</option>
                       <option value="566">Palau</option>
                       <option value="567">Palestine (‫فلسطين‬‎)</option>
                       <option value="568">Panama (Panamá)</option>
                       <option value="569">Papua New Guinea</option>
                       <option value="570">Paraguay</option>
                       <option value="571">Peru (Perú)</option>
                       <option value="572">Philippines</option>
                       <option value="651">Pitcairn Islands</option>
                       <option value="573">Poland (Polska)</option>
                       <option value="574">Portugal</option>
                       <option value="669">Puerto Rico</option>
                       <option value="575">Qatar (‫قطر‬‎)</option>
                       <option value="686">Réunion</option>
                       <option value="578">Romania (România)</option>
                       <option value="579">Russia (Россия)</option>
                       <option value="580">Rwanda</option>
                       <option value="688">Saint Barthélemy (Saint-Barthélémy)</option>
                       <option value="675">Saint Helena</option>
                       <option value="488">Saint Kitts and Nevis</option>
                       <option value="582">Saint Lucia</option>
                       <option value="641">Saint Martin (Saint-Martin [partie française])</option>
                       <option value="654">Saint Pierre and Miquelon (Saint-Pierre-et-Miquelon)</option>
                       <option value="583">Saint Vincent and the Grenadines</option>
                       <option value="584">Samoa</option>
                       <option value="585">San Marino</option>
                       <option value="586">São Tomé and Príncipe (São Tomé e Príncipe)</option>
                       <option value="587">Saudi Arabia (‫المملكة العربية السعودية‬‎)</option>
                       <option value="588">Senegal (Sénégal)</option>
                       <option value="589">Serbia (Србија)</option>
                       <option value="590">Seychelles</option>
                       <option value="591">Sierra Leone</option>
                       <option value="592">Singapore</option>
                       <option value="691">Sint Maarten</option>
                       <option value="593">Slovakia (Slovensko)</option>
                       <option value="594">Slovenia (Slovenija)</option>
                       <option value="595">Solomon Islands</option>
                       <option value="596">Somalia (Soomaaliya)</option>
                       <option value="597">South Africa</option>
                       <option value="692">South Georgia and the South Sandwich Islands</option>
                       <option value="522">South Korea (대한민국)</option>
                       <option value="603">South Sudan (‫جنوب السودان‬‎)</option>
                       <option value="598">Spain (España)</option>
                       <option value="599">Sri Lanka (ශ්‍රී ලංකාව)</option>
                       <option value="602">Sudan (‫السودان‬‎)</option>
                       <option value="604">Suriname</option>
                       <option value="661">Svalbard and Jan Mayen (Svalbard og Jan Mayen)</option>
                       <option value="605">Swaziland</option>
                       <option value="606">Sweden (Sverige)</option>
                       <option value="607">Switzerland (Schweiz)</option>
                       <option value="608">Syria (‫سوريا‬‎)</option>
                       <option value="609">Taiwan (台灣)</option>
                       <option value="610">Tajikistan</option>
                       <option value="611">Tanzania</option>
                       <option value="612">Thailand (ไทย)</option>
                       <option value="613">Timor-Leste</option>
                       <option value="614">Togo</option>
                       <option value="684">Tokelau</option>
                       <option value="615">Tonga</option>
                       <option value="616">Transnistria</option>
                       <option value="617">Trinidad and Tobago</option>
                       <option value="680">Tristan da Cunha</option>
                       <option value="618">Tunisia (‫تونس‬‎)</option>
                       <option value="619">Turkey (Türkiye)</option>
                       <option value="620">Turkmenistan</option>
                       <option value="454">Turks and Caicos Islands</option>
                       <option value="622">Tuvalu</option>
                       <option value="677">U.S. Outlying Islands</option>
                       <option value="663">U.S. Virgin Islands</option>
                       <option value="623">Uganda</option>
                       <option value="624">Ukraine (Україна)</option>
                       <option value="625">United Arab Emirates (‫الإمارات العربية المتحدة‬‎)</option>
                       <option value="626">United Kingdom</option>
                       <option value="627">United States</option>
                       <option value="628">Uruguay</option>
                       <option value="629">Uzbekistan (Ўзбекистон)</option>
                       <option value="630">Vanuatu</option>
                       <option value="631">Vatican City (Città del Vaticano)</option>
                       <option value="632">Venezuela</option>
                       <option value="633">Vietnam (Việt Nam)</option>
                       <option value="683">Wallis and Futuna</option>
                       <option value="581">Western Sahara (‫الصحراء الغربية‬‎)</option>
                       <option value="634">Yemen (‫اليمن‬‎)</option>
                       <option value="635">Zambia</option>
                       <option value="636">Zimbabwe</option></select>
                       <input type="tel" name="telephone" placeholder="Telephone">
                       <input type="number" name="mobile" placeholder="Mobile"/>
                       <input type="email" name="email" placeholder="Email Id"/>
                   </div>
                       <!--<div class="button-align">-->
                           <input type="button" class="previous-button previous-button-align" value="Previous"/>
                           <input type="button"  class="next-button button-align"  value="Next"/>
                       <!--</div>-->

               </fieldset>


                <fieldset id="thirdFs">
                    <legend>More Information</legend>
                    <div class="col-1 span-1">
                        <label>Course & Batch</label>
                            <select name="course-batch" class="select-combo-box">
                            <option value="Batch 1">Batch 1</option>
                            <option value="Batch 2">Batch 2</option>
                            <option value="Batch 3">Batch 3</option>
                            <option value="Batch 4">Batch 4</option>
                            <option value="Batch 5">Batch 5</option>
                            <option value="Batch 6">Batch 6</option>
                            <option value="Batch 7">Batch 7</option>
                        </select><br/>
                        <label>Birth Date</label>
                        <input type="date" name="birthDate" placeholder="Birth Date dd/mm/yyyy"/>
                        <input type="radio" name="sex" value="male">Male
                        <input type="radio" name="sex" value="female">Female
                        <br/>
                        <input type="text" name="bloodGroup" placeholder="Blood Group"/>
                        <input type="text" name="birthPlace" placeholder="Birth Place"/>
                        <input type="text" name="nationality" placeholder="Nationality"/>
                        <input type="text" name="motherTongue" placeholder="Mother Tongue"/>
                        <input type="text" name="religion" placeholder="Religion"/>
                        <select class="select-combo-box">
                            <option value="">Select a Category</option>
                            <option value="23254">General</option>
                            <option value="23255">SC</option>
                            <option value="23256">ST</option>
                            <option value="23257">OBC</option></select>
                        </select><br/>
                        <input type="text" name="biometric" placeholder="Biometric ID"/>
                        <label>Enable Email Feature</label>
                        <input type="checkbox" name="feature"/>
                    </div>

                    <!--<div class="button-align">-->
                        <input type="button"  class="previous-button previous-button-align" value="Previous"/>
                        <input type="button" class="next-button button-align" value="Next"/>
                    <!--</div> -->

               </fieldset>

    <fieldset id="fourthFs">
    <legend>Parent Details</legend>
    <div class="col-1 span-1">

    <input type="text" name="firstname" placeholder="First Name"/>
    <input type="text" name="lastname" placeholder="Last Name"/>
    <input type="text" name="address1" placeholder="Address 1"/>
    <input type="text" name="address2" placeholder="Address 2"/>
    <input type="text" name="city" placeholder="City"/>
    <input type="text" name="postcode" placeholder="Postcode"/>
    <input type="text" name="state" placeholder="State"/>
    <select class="select-combo-box" id="student_country_id" name="student[country_id]">
    <option value="425">Afghanistan (‫افغانستان‬‎)</option>
    <option value="656">Åland Islands (Åland)</option>
    <option value="426">Albania (Shqipëria)</option>
    <option value="427">Algeria (‫الجزائر‬‎)</option>
    <option value="644">American Samoa</option>
    <option value="428">Andorra</option>
    <option value="429">Angola</option>
    <option value="668">Anguilla</option>
    <option value="681">Antarctica</option>
    <option value="430">Antigua and Barbuda</option>
    <option value="431">Argentina</option>
    <option value="432">Armenia (Հայաստան)</option>
    <option value="647">Aruba</option>
    <option value="646">Ascension Island</option>
    <option value="433">Australia</option>
    <option value="434">Austria (Österreich)</option>
    <option value="435">Azerbaijan (Azərbaycan)</option>
    <option value="436">Bahamas</option>
    <option value="437">Bahrain (‫البحرين‬‎)</option>
    <option value="438">Bangladesh (বাংলাদেশ)</option>
    <option value="439">Barbados</option>
    <option value="440">Belarus (Беларусь)</option>
    <option value="441">Belgium (België)</option>
    <option value="442">Belize</option>
    <option value="443">Benin (Bénin)</option>
    <option value="666">Bermuda</option>
    <option value="444">Bhutan (འབྲུག)</option>
    <option value="445">Bolivia</option>
    <option value="446">Bosnia and Herzegovina (Босна и Херцеговина)</option>
    <option value="447">Botswana</option>
    <option value="652">Bouvet Island</option>
    <option value="448">Brazil (Brasil)</option>
    <option value="639">British Indian Ocean Territory</option>
    <option value="671">British Virgin Islands</option>
    <option value="449">Brunei</option>
    <option value="450">Bulgaria (България)</option>
    <option value="451">Burkina Faso</option>
    <option value="453">Burundi (Uburundi)</option>
    <option value="455">Cambodia (កម្ពុជា)</option>
    <option value="456">Cameroon (Cameroun)</option>
    <option value="457">Canada</option>
    <option value="665">Canary Islands (Islas Canarias)</option>
    <option value="458">Cape Verde (Kabu Verdi)</option>
    <option value="558">Caribbean Netherlands</option>
    <option value="690">Cayman Islands</option>
    <option value="459">Central African Republic (République centrafricaine)</option>
    <option value="674">Ceuta and Melilla (Ceuta y Melilla)</option>
    <option value="460">Chad (Tchad)</option>
    <option value="461">Chile</option>
    <option value="462">China (中国)</option>
    <option value="682">Christmas Island</option>
    <option value="637">Clipperton Island (Île Clipperton)</option>
    <option value="664">Cocos [Keeling] Islands</option>
    <option value="463">Colombia</option>
    <option value="464">Comoros (‫جزر القمر‬‎)</option>
    <option value="475">Congo [DRC] (Jamhuri ya Kidemokrasia ya Kongo)</option>
    <option value="577">Congo [Republic] (Congo-Brazzaville)</option>
    <option value="467">Cook Islands</option>
    <option value="468">Costa Rica</option>
    <option value="473">Côte d’Ivoire</option>
    <option value="469">Croatia (Hrvatska)</option>
    <option value="470">Cuba</option>
    <option value="667">Curaçao</option>
    <option value="471">Cyprus (Κύπρος)</option>
    <option value="472">Czech Republic (Česká republika)</option>
    <option value="476">Denmark (Danmark)</option>
    <option value="657">Diego Garcia</option>
    <option value="477">Djibouti</option>
    <option value="478">Dominica</option>
    <option value="479">Dominican Republic (República Dominicana)</option>
    <option value="481">Ecuador</option>
    <option value="482">Egypt (‫مصر‬‎)</option>
    <option value="483">El Salvador</option>
    <option value="484">Equatorial Guinea (Guinea Ecuatorial)</option>
    <option value="485">Eritrea</option>
    <option value="486">Estonia (Eesti)</option>
    <option value="487">Ethiopia</option>
    <option value="689">Falkland Islands [Islas Malvinas]</option>
    <option value="685">Faroe Islands (Føroyar)</option>
    <option value="489">Fiji</option>
    <option value="490">Finland (Suomi)</option>
    <option value="491">France</option>
    <option value="653">French Guiana (Guyane française)</option>
    <option value="659">French Polynesia (Polynésie française)</option>
    <option value="672">French Southern Territories (Terres australes françaises)</option>
    <option value="492">Gabon</option>
    <option value="493">Gambia</option>
    <option value="494">Georgia (საქართველო)</option>
    <option value="495">Germany (Deutschland)</option>
    <option value="496">Ghana (Gaana)</option>
    <option value="649">Gibraltar</option>
    <option value="497">Greece (Ελλάδα)</option>
    <option value="648">Greenland (Kalaallit Nunaat)</option>
    <option value="498">Grenada</option>
    <option value="640">Guadeloupe</option>
    <option value="643">Guam</option>
    <option value="499">Guatemala</option>
    <option value="678">Guernsey</option>
    <option value="500">Guinea (Guinée)</option>
    <option value="501">Guinea-Bissau (Guiné Bissau)</option>
    <option value="502">Guyana</option>
    <option value="503">Haiti</option>
    <option value="645">Heard Island and McDonald Islands</option>
    <option value="504">Honduras</option>
    <option value="687">Hong Kong (香港)</option>
    <option value="505">Hungary (Magyarország)</option>
    <option value="506">Iceland (Ísland)</option>
    <option value="76" selected="selected">India (भारत)</option>
    <option value="508">Indonesia</option>
    <option value="509">Iran (‫ایران‬‎)</option>
    <option value="510">Iraq (‫العراق‬‎)</option>
    <option value="511">Ireland</option>
    <option value="655">Isle of Man</option>
    <option value="512">Israel (‫ישראל‬‎)</option>
    <option value="513">Italy (Italia)</option>
    <option value="515">Jamaica</option>
    <option value="516">Japan (日本)</option>
    <option value="638">Jersey</option>
    <option value="517">Jordan (‫الأردن‬‎)</option>
    <option value="518">Kazakhstan (Казахстан)</option>
    <option value="519">Kenya</option>
    <option value="520">Kiribati</option>
    <option value="523">Kosovo (Косово)</option>
    <option value="524">Kuwait (‫الكويت‬‎)</option>
    <option value="525">Kyrgyzstan</option>
    <option value="526">Laos (ສ.ປ.ປ ລາວ)</option>
    <option value="527">Latvia (Latvija)</option>
    <option value="528">Lebanon (‫لبنان‬‎)</option>
    <option value="529">Lesotho</option>
    <option value="530">Liberia</option>
    <option value="531">Libya (‫ليبيا‬‎)</option>
    <option value="532">Liechtenstein</option>
    <option value="533">Lithuania (Lietuva)</option>
    <option value="534">Luxembourg</option>
    <option value="670">Macau (澳門)</option>
    <option value="535">Macedonia [FYROM] (Македонија)</option>
    <option value="536">Madagascar (Madagasikara)</option>
    <option value="537">Malawi</option>
    <option value="538">Malaysia</option>
    <option value="539">Maldives</option>
    <option value="540">Mali</option>
    <option value="541">Malta</option>
    <option value="542">Marshall Islands</option>
    <option value="650">Martinique</option>
    <option value="543">Mauritania (‫موريتانيا‬‎)</option>
    <option value="544">Mauritius (Moris)</option>
    <option value="658">Mayotte</option>
    <option value="545">Mexico (México)</option>
    <option value="546">Micronesia</option>
    <option value="547">Moldova (Republica Moldova)</option>
    <option value="548">Monaco</option>
    <option value="549">Mongolia (Монгол)</option>
    <option value="550">Montenegro (Crna Gora)</option>
    <option value="662">Montserrat</option>
    <option value="551">Morocco (‫المغرب‬‎)</option>
    <option value="552">Mozambique (Moçambique)</option>
    <option value="452">Myanmar [Burma] (မြန်မာ)</option>
    <option value="554">Nagorno-Karabakh</option>
    <option value="555">Namibia</option>
    <option value="556">Nauru</option>
    <option value="557">Nepal (नेपाल)</option>
    <option value="660">Netherlands (Nederland)</option>
    <option value="673">New Caledonia (Nouvelle-Calédonie)</option>
    <option value="559">New Zealand</option>
    <option value="560">Nicaragua</option>
    <option value="561">Niger (Nijar)</option>
    <option value="562">Nigeria</option>
    <option value="642">Niue</option>
    <option value="676">Norfolk Island</option>
    <option value="474">North Korea (조선 민주주의 인민 공화국)</option>
    <option value="679">Northern Mariana Islands</option>
    <option value="563">Norway (Norge)</option>
    <option value="564">Oman (‫عُمان‬‎)</option>
    <option value="565">Pakistan (‫پاکستان‬‎)</option>
    <option value="566">Palau</option>
    <option value="567">Palestine (‫فلسطين‬‎)</option>
    <option value="568">Panama (Panamá)</option>
    <option value="569">Papua New Guinea</option>
    <option value="570">Paraguay</option>
    <option value="571">Peru (Perú)</option>
    <option value="572">Philippines</option>
    <option value="651">Pitcairn Islands</option>
    <option value="573">Poland (Polska)</option>
    <option value="574">Portugal</option>
    <option value="669">Puerto Rico</option>
    <option value="575">Qatar (‫قطر‬‎)</option>
    <option value="686">Réunion</option>
    <option value="578">Romania (România)</option>
    <option value="579">Russia (Россия)</option>
    <option value="580">Rwanda</option>
    <option value="688">Saint Barthélemy (Saint-Barthélémy)</option>
    <option value="675">Saint Helena</option>
    <option value="488">Saint Kitts and Nevis</option>
    <option value="582">Saint Lucia</option>
    <option value="641">Saint Martin (Saint-Martin [partie française])</option>
    <option value="654">Saint Pierre and Miquelon (Saint-Pierre-et-Miquelon)</option>
    <option value="583">Saint Vincent and the Grenadines</option>
    <option value="584">Samoa</option>
    <option value="585">San Marino</option>
    <option value="586">São Tomé and Príncipe (São Tomé e Príncipe)</option>
    <option value="587">Saudi Arabia (‫المملكة العربية السعودية‬‎)</option>
    <option value="588">Senegal (Sénégal)</option>
    <option value="589">Serbia (Србија)</option>
    <option value="590">Seychelles</option>
    <option value="591">Sierra Leone</option>
    <option value="592">Singapore</option>
    <option value="691">Sint Maarten</option>
    <option value="593">Slovakia (Slovensko)</option>
    <option value="594">Slovenia (Slovenija)</option>
    <option value="595">Solomon Islands</option>
    <option value="596">Somalia (Soomaaliya)</option>
    <option value="597">South Africa</option>
    <option value="692">South Georgia and the South Sandwich Islands</option>
    <option value="522">South Korea (대한민국)</option>
    <option value="603">South Sudan (‫جنوب السودان‬‎)</option>
    <option value="598">Spain (España)</option>
    <option value="599">Sri Lanka (ශ්‍රී ලංකාව)</option>
    <option value="602">Sudan (‫السودان‬‎)</option>
    <option value="604">Suriname</option>
    <option value="661">Svalbard and Jan Mayen (Svalbard og Jan Mayen)</option>
    <option value="605">Swaziland</option>
    <option value="606">Sweden (Sverige)</option>
    <option value="607">Switzerland (Schweiz)</option>
    <option value="608">Syria (‫سوريا‬‎)</option>
    <option value="609">Taiwan (台灣)</option>
    <option value="610">Tajikistan</option>
    <option value="611">Tanzania</option>
    <option value="612">Thailand (ไทย)</option>
    <option value="613">Timor-Leste</option>
    <option value="614">Togo</option>
    <option value="684">Tokelau</option>
    <option value="615">Tonga</option>
    <option value="616">Transnistria</option>
    <option value="617">Trinidad and Tobago</option>
    <option value="680">Tristan da Cunha</option>
    <option value="618">Tunisia (‫تونس‬‎)</option>
    <option value="619">Turkey (Türkiye)</option>
    <option value="620">Turkmenistan</option>
    <option value="454">Turks and Caicos Islands</option>
    <option value="622">Tuvalu</option>
    <option value="677">U.S. Outlying Islands</option>
    <option value="663">U.S. Virgin Islands</option>
    <option value="623">Uganda</option>
    <option value="624">Ukraine (Україна)</option>
    <option value="625">United Arab Emirates (‫الإمارات العربية المتحدة‬‎)</option>
    <option value="626">United Kingdom</option>
    <option value="627">United States</option>
    <option value="628">Uruguay</option>
    <option value="629">Uzbekistan (Ўзбекистон)</option>
    <option value="630">Vanuatu</option>
    <option value="631">Vatican City (Città del Vaticano)</option>
    <option value="632">Venezuela</option>
    <option value="633">Vietnam (Việt Nam)</option>
    <option value="683">Wallis and Futuna</option>
    <option value="581">Western Sahara (‫الصحراء الغربية‬‎)</option>
    <option value="634">Yemen (‫اليمن‬‎)</option>
    <option value="635">Zambia</option>
    <option value="636">Zimbabwe</option></select>
    <input type="tel" name="telephone" placeholder="Telephone">
    <input type="number" name="mobile" placeholder="Mobile"/>
    <input type="email" name="email" placeholder="Email Id"/>
    </div>
    <!--<div class="button-align">-->
        <input type="button"  class="previous-button previous-button-align" value="Previous"/>
        <input type="button" class="next-button button-align" value="Next"/>
    <!--</div>-->
    </fieldset>


<fieldset id="FifthFs">
    <legend>Parent Information</legend>
    <div class="col-1 span-1">
        <label>Birth Date</label>
        <input type="date" name="birthDate" placeholder="Birth Date"/>
        <input type="text" name="education" placeholder="Education"/>
        <input type="text" name="occupation" placeholder="Occupation"/>
        <input type="text" name="relation" placeholder="Relation"/>
        <input type="number" name="income" placeholder="Income"/>
    </div>

            <!--<div class="button-align">-->
                <input type="button" class="previous-button previous-button-align" value="Previous"/>
                <input type="button"  value="Finish"/>
             <!--</div>-->

</fieldset>
    </form>

    <br/>

    </div>
    </div>
    </div>

</body>
</html>