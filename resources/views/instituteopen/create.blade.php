<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-center text-gray-800 leading-tight ">
            {{ __('নতুন প্রতিষ্ঠান স্থাপনের অনলাইন আবেদন ফরম') }}
        </h2>
    </x-slot>

    <div class="py-2 text-center">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <form class="w-full" action="{{ url('institute-open-application') }}" method="POST" enctype="multipart/form-data">
                    @csrf



                    <div class="grid grid-cols-4 md:grid-cols-8 gap-3 pl-10 pt-10"> <!-- Grid Container -->
                        <div class="flex items-center">  <!-- Grid cell -->
                          <label class="text-gray-500 font-bold mb-1 md:mb-0 mr-2 whitespace-nowrap" for="inline-full-name">আবেদনের বিষয়</label>
                        </div>
                        <div class="flex items-center col-span-3">  <!-- Grid cell -->
                          <select class="border-2 border-gray-600 w-full rounded-lg" name="users" id="users">
                            <option value="user1">One</option>
                            <option value="user2">Two</option>
                            <option value="user3">Three</option>
                          </select>
                        </div>
                    </div>

                    <div class="grid grid-cols-4 md:grid-cols-8 gap-3 pl-10 pt-10"> <!-- Grid Container -->
 <div class="flex items-center"> <!-- Grid cell -->
        <label class="text-gray-500 font-bold mb-1 md:mb-0 whitespace-nowrap mr-2" for="inline-password">First Name</label>
      </div>
      <div class="flex items-center col-span-3"> <!-- Grid cell -->
        <input class="appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-gray-800" id="first-name" type="text" placeholder="First Name" />
      </div>
      <div class="flex items-center"> <!-- Grid cell -->
        <label class="block text-gray-500 font-bold mb-1 md:mb-0 whitespace-nowrap mr-2" for="last-name">Last Name</label>
      </div>
      <div class="flex items-center col-span-3"> <!-- Grid cell -->
        <input class="appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-gray-800" id="inline-password" type="text" placeholder="Last Name" />
      </div>

    </div>



                <!-- Name -->
                <div class="pl-10 pt-10 flex">
                             <div class="pr-7 text-lg">
                                <label class=" text-xl font-bold">আবেদনের বিষয় </label>
                            </div>
                                <div class="rounded-xl">
                                <select class="rounded-lg font-bold" id="name" name="name" :value="old('name')" required autofocus autocomplete="name" >
                                <option class="rounded-lg font-bold" value="1">নতুন প্রতিষ্ঠান স্থাপনের আবেদন </option>
                                </select>
                             </div>
                            </div>

                    <!-- Mobile -->
                    <div class="pl-10 pt-10 flex">
                        <div class="pr-7 text-lg">
                           <label class=" text-xl font-bold valign-middle">আবেদনকারীর মোবাইল</label>
                        </div>
                           <div class="block w-56">
            <x-text-input id="mobile" class="block mt-1 w-full" type="text" name="mobile" :value="old('mobile')" required autofocus autocomplete="mobile" />
            <x-input-error :messages="$errors->get('mobile')" class="mt-2" />
        </div>
    </div>

     <!-- Email Address -->
     <div class="space-y-2 lg:space-y-0 lg:space-x-4 mt-8 ml-10">
        <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
        <x-input-label for="প্রতিষ্ঠানের ইমেইল" :value="__('প্রতিষ্ঠানের ইমেইল')" />
        <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autocomplete="email" />
        <x-input-error :messages="$errors->get('email')" class="mt-2" />
    </div>
</div>






<!-- Name -->
<div class="space-y-2 lg:space-y-0 lg:space-x-4 mt-8 ml-10">
    <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
    <x-input-label for="প্রতিষ্ঠানের নাম" :value="__('প্রতিষ্ঠানের নাম')" />
    <x-text-input id="institutename" class="block mt-1 w-full" type="text" name="institutename" :value="old('institutename')" required autofocus autocomplete="institutename" />
    <x-input-error :messages="$errors->get('institutename')" class="mt-2" />
</div>
</div>

<div class="space-y-2 lg:space-y-0 lg:space-x-4 mt-8 ml-10">
    <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
    <x-input-label for="প্রতিষ্ঠানটি কি ব্যক্তিনামের প্রতিষ্ঠান?" :value="__('প্রতিষ্ঠানটি কি ব্যক্তিনামের প্রতিষ্ঠান?')" />
    <select id="institute_name_type" name="institute_name_type" :value="old('institute_name_type')" required autofocus autocomplete="institute_name_type" >
        <option value="">Select</option>
        <option id="option_1" value="1">হ্যাঁ</option>
        <option id="option_2" value="2">না</option>
       </select>

    <!--input type="radio" id="html" name="institute_name_type" value="HTML">
<label for="1">হ্যাঁ </label><br>
<input type="radio" id="css" name="fav_language" value="CSS">
<label-- for="css">না </label-->
</div>
 </div>
  <!-- address -->

  <div class="space-y-2 lg:space-y-0 lg:space-x-4 mt-8 ml-10">
    <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
            <x-input-label for="প্রতিষ্ঠানের ঠিকানা" :value="__('প্রতিষ্ঠানের ঠিকানা')" />
            <x-text-input id="address" class="block mt-1 w-full" type="text" name="address" :value="old('address')" required autofocus autocomplete="address" />
            <x-input-error :messages="$errors->get('address')" class="mt-2" />
        </div>
</div>

 <!-- address -->




                <!-- address -->
                <div class="space-y-2 lg:space-y-0 lg:space-x-4 mt-8 ml-10">
                    <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
                        <x-input-label for="প্রতিষ্ঠানের ধরণ" :value="__('প্রতিষ্ঠানের ধরণ')" />
                       <select id="institution_type" name="institution_type" :value="old('institution_type')" required autofocus autocomplete="institution_type" >
                        <option value="">Select</option>
                        <option id="option_1" value="1">বালক</option>
                        <option id="option_2" value="2">বালিকা</option>
                        <option id="option_3" value="3">সহশিক্ষা</option>
                        <option id="option_4" value="4">মহিলা কলেজ</option>
                       </select>
                    </div>
               </div>


                               <!-- Name -->
                               <div class="space-y-2 lg:space-y-0 lg:space-x-4 mt-8 ml-10">
                                <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
                                   <x-input-label for="প্রতিষ্ঠানের মাধ্যম : " :value="__('প্রতিষ্ঠানের মাধ্যম : ')" />
                                   <select id="institute_version" name="institute_version" :value="old('institute_version')" required autofocus autocomplete="institute_version" >
                                    <option value="">Select</option>
                                    <option value="1">বাংলা ভার্সন</option>
                                    <option value="1">ইংরেজি ভার্সন</option>
                                    <option value="1">বাংলা ও ইংরেজি ভার্সন</option>
                                   </select>
                                </div>
                           </div>


                               <!-- Name -->
                               <div class="space-y-2 lg:space-y-0 lg:space-x-4 mt-8 ml-10">
                                <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
                                   <x-input-label for="প্রার্থীত পর্যায় : " :value="__('প্রার্থীত পর্যায় : ')" />
                                   <select id="institute_section" name="institute_section" :value="old('institute_section')" required autofocus autocomplete="institute_section" >
                                    <option value="">Select</option>
                                    <option value="1">নিম্ন মাধ্যমিক বিদ্যালয় (৬ষ্ঠ-৮ম শ্রেণি) </option>
                                    <option value="1">মাধ্যমিক বিদ্যালয় (৯ম-১০ম শ্রেণি) </option>
                                    <option value="1">উচ্চ মাধ্যমিক বিদ্যালয় ও মহাবিদ্যালয় (৬ষ্ঠ-১২শ শ্রেণি) </option>
                                    <option value="1">উচ্চ মাধ্যমিক মহাবিদ্যালয় (১১শ-১২শ শ্রেণি)  </option>
                                   </select>
                                </div>
                           </div>


                               <!-- institute_area -->
                               <div class="space-y-2 lg:space-y-0 lg:space-x-4 mt-8 ml-10">
                                <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
                                   <x-input-label for="শিক্ষা প্রতিষ্ঠানের অবস্থান : " :value="__('শিক্ষা প্রতিষ্ঠানের অবস্থান : ')" />
                                   <select id="institute_area" name="institute_area" :value="old('institute_area')" required autofocus autocomplete="institute_area" >
                                    <option value="">Select</option>
                                    <option value="1">সিটি কর্পোরেশন এলাকায়</option>
                                    <option value="1">পৌর এলাকায়</option>
                                    <option value="1">মফস্বলে</option>
                                   </select>
                                </div>
                           </div>

                               <!-- institute_distance -->
                               <div class="space-y-2 lg:space-y-0 lg:space-x-4 mt-8 ml-10">
                                <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
                                   <x-input-label for="বিদ্যমান প্রতিষ্ঠানস্মূহের নিকটতম দূরত্ব (কিলোমিটার): " :value="__('বিদ্যমান প্রতিষ্ঠানস্মূহের নিকটতম দূরত্ব (কিলোমিটার) : ')" />
                                   <x-text-input id="institute_distance" class="block mt-1 w-full" type="text" name="institute_distance" :value="old('institute_distance')" required autofocus autocomplete="institute_distance" />
                                   <x-input-label class="pl-8 block font-medium text-m text-gray-700" for="কিলোমিটার" :value="__('কিলোমিটার ')" />
                                   <x-input-error :messages="$errors->get('institute_distance')" class="mt-2" />
                                </div>
                                <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
                                    <x-input-label class="pl-8" for="সনদ সংযুক্ত: " :value="__('সনদ সংযুক্ত: ')" />
                                    <x-text-input id="institute_distance_attachment" class="block mt-1 w-full" type="file" name="institute_distance_attachment" :value="old('institute_distance_attachment')" />
                                    <x-input-error :messages="$errors->get('institute_distance_attachment')" class="mt-2" />
                                 </div>
                           </div>
                <!-- institute_population -->
                               <div class="space-y-2 lg:space-y-0 lg:space-x-4 mt-8 ml-10">
                                <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
                                   <x-input-label for="জেলা/উপজেলা পরিসংখ্যান কর্মকর্তা কর্তৃক প্রদত্ত প্রতিষ্ঠান এলাকার জনসংখ্যা: " :value="__('জেলা/উপজেলা পরিসংখ্যান কর্মকর্তা কর্তৃক প্রদত্ত প্রতিষ্ঠান এলাকার জনসংখ্যা : ')" />
                                   <x-text-input id="institute_population" class="block mt-1 w-full" type="text" name="institute_population" :value="old('institute_population')" required autofocus autocomplete="institute_population" />
                                   <x-input-label  for="জন" :value="__('জন ')" />
                                   <x-input-error :messages="$errors->get('institute_population')" class="mt-2" />
                                </div>
                                <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
                                    <x-input-label class="pl-8" for="সনদ সংযুক্ত: " :value="__('সনদ সংযুক্ত: ')" />
                                    <x-text-input id="institute_population_attachment" class="block mt-1 w-full" type="file" name="institute_population_attachment" :value="old('institute_population_attachment')" />
                                    <x-input-error :messages="$errors->get('institute_population_attachment')" class="mt-2" />
                                 </div>
                           </div>
                            <!-- institute_population -->
                            <div class="space-y-2 lg:space-y-0 lg:space-x-4 mt-8 ml-10">
                                <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
                                   <x-input-label for="জমির পরিমাণ (একর)
                                   খতিয়ান/হালনাগাদ খাজনার তথ্য উল্লেখসহ: " :value="__('জমির পরিমাণ (একর)
                                   খতিয়ান/হালনাগাদ খাজনার তথ্য উল্লেখসহ : ')" />
                                   <x-text-input id="institute_land" class="block mt-1 w-full" type="text" name="institute_land" :value="old('institute_land')" required autofocus autocomplete="institute_land" />
                                   <x-input-label  for="একর" :value="__('একর ')" />
                                   <x-input-error :messages="$errors->get('institute_land')" class="mt-2" />
                                </div>
                                <div class="mt-4 relative flex lg:inline-flex items-center justify-center rounded-xl mr-8">
                                    <x-input-label class="pl-8" for="সনদ সংযুক্ত: " :value="__('সনদ সংযুক্ত: ')" />
                                    <x-text-input id="institute_land_attachment" class="block mt-1 w-full" type="file" name="institute_land_attachment" :value="old('institute_land_attachment')"  />
                                    <x-input-error :messages="$errors->get('institute_land_attachment')" class="mt-2" />
                                 </div>
                           </div>
 <div class="py-12">
                                <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                                    <table class="w-full bg-white">
                                        <thead>
                                            <tr class="border-b-2">
                                                <th class="p-2 py-3 text-left">বিষয়</th>
                                                <th class="p-2 py-3 text-left">তারিখ</th>
                                                <th class="p-2 py-3 text-left">স্মারক (অনুলিপি সংযুক্ত)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>স্থাপনের অনুমতি (নিম্ন মাধ্যমিক)</td>
                                            <td> <x-text-input id="establishing_institute_date" class="block mt-1 w-full" type="text" name="establishing_institute_date" :value="old('establishing_institute_date')" required autofocus autocomplete="establishing_institute_date" /></td>
                                            <td><x-text-input id="establishing_institute_attachment" class="ml-5 block mt-1" type="file" name="establishing_institute_attachment" :value="old('establishing_institute_attachment')"/></td>
                                        </tr>
                                        <tr>
                                            <td>নিম্ন মাধ্যমিক পর্যায়ে পাঠদানের অনুমতি</td>
                                            <td> <x-text-input id="jsc_teachingpermission_date" class="block mt-1 w-full" type="text" name="jsc_teachingpermission_date" :value="old('jsc_teachingpermission_date')" required autofocus autocomplete="jsc_teachingpermission_date" /></td>
                                            <td><x-text-input id="jsc_teachingpermission_attachment" class="ml-5 block mt-1" type="file" name="jsc_teachingpermission_attachment" :value="old('jsc_teachingpermission_attachment')" /></td>
                                        </tr>
                                        <tr>
                                            <td>মাধ্যমিক পর্যায়ে পাঠদানের অনুমতি</td>
                                            <td> <x-text-input id="ssc_teachingpermission_date" class="block mt-1 w-full" type="text" name="ssc_teachingpermission_date" :value="old('ssc_teachingpermission_date')" required autofocus autocomplete="ssc_teachingpermission_date" /></td>
                                            <td><x-text-input id="ssc_teachingpermission_attachment" class="ml-5 block mt-1" type="file" name="ssc_teachingpermission_attachment" :value="old('ssc_teachingpermission_attachment')"/></td>
                                        </tr>
                                        <tr>
                                            <td>উচ্চ মাধ্যমিক পর্যায়ে পাঠদানের অনুমতি</td>
                                            <td> <x-text-input id="hsc_teachingpermission_date" class="block mt-1 w-full" type="text" name="hsc_teachingpermission_date" :value="old('hsc_teachingpermission_date')" required autofocus autocomplete="hsc_teachingpermission_date" /></td>
                                            <td><x-text-input id="hsc_teachingpermission_attachment" class="ml-5 block mt-1" type="file" name="hsc_teachingpermission_attachment" :value="old('hsc_teachingpermission_attachment')" /></td>
                                        </tr>
                                        <tr>
                                            <td>নিম্ন মাধ্যমিক পর্যায়ে একাডেমিক স্বীকৃতির অনুমতি</td>
                                            <td> <x-text-input id="jsc_affiliation_date" class="block mt-1 w-full" type="text" name="jsc_affiliation_date" :value="old('jsc_affiliation_date')" required autofocus autocomplete="jsc_affiliation_date" /></td>
                                            <td><x-text-input id="jsc_affiliation_attachment" class="ml-5 block mt-1" type="file" name="jsc_affiliation_attachment" :value="old('jsc_affiliation_attachment')"  /></td>
                                        </tr>
                                        <tr>
                                            <td>মাধ্যমিক পর্যায়ে একাডেমিক স্বীকৃতির অনুমতি</td>
                                            <td> <x-text-input id="ssc_affiliation_date" class="block mt-1 w-full" type="text" name="ssc_affiliation_date" :value="old('ssc_affiliation_date')" required autofocus autocomplete="ssc_affiliation_date" /></td>
                                            <td><x-text-input id="ssc_affiliation_attachment" class="ml-5 block mt-1" type="file" name="ssc_affiliation_attachment" :value="old('ssc_affiliation_attachment')" /></td>
                                        </tr>
                                        <tr>
                                            <td>উচ্চমাধ্যমিক পর্যায়ে একাডেমিক স্বীকৃতির অনুমতি</td>
                                            <td> <x-text-input id="hsc_affiliation_date" class="block mt-1 w-full" type="text" name="hsc_affiliation_date" :value="old('hsc_affiliation_date')" required autofocus autocomplete="hsc_affiliation_date" /></td>
                                            <td><x-text-input id="hsc_affiliation_attachment" class="ml-5 block mt-1" type="file" name="hsc_affiliation_attachment" :value="old('hsc_affiliation_attachment')" /></td>
                                        </tr>
                                    </tbody>
                                    </table>
                                 </div>
                           </div>








                           <div class="flex items-center justify-center mt-4 mb-10">

                           <x-primary-button class="ml-3 ">
                            {{ __('Submit') }}
                        </x-primary-button>
                    </div>


                </form>

            </div>
        </div>
    </div>
</x-app-layout>
