NycpmrMicro::Application.routes.draw do

  root :to => 'home#index'

  get '/sitemap' => 'home#sitemap'

  get '/about-us' => 'home#about-us'
  get '/types-of-pain' => 'home#types-of-pain'
  get '/treatments' => 'home#treatments'

  get '/news' => 'home#news'
  get '/treatment' => 'home#treatment'

  get '/resources' => 'home#resources'
  get '/contact' => 'home#contact'
  get '/before-after' => 'home#before-after'
  post '/sign-up' => 'users#create'
  post '/contact' => 'inquiries#create'
  post '/ebook' => 'home#ebook'

  # REDIRECTS
  get '/contact-us', to: redirect('/contact')
  get '/locate-our-office', to: redirect('/contact')
  get '/dr-hunter', to: redirect('/meet-dr-hunter')

  # ABOUT NAV
  get '/about-ainsworth' => 'home#about-ainsworth'
  get '/meet-dr-chen' => 'home#meet-dr-chen'
  get '/meet-dr-lee' => 'home#meet-dr-lee'
  get '/meet-dr-hunter' => 'home#meet-dr-hunter'
  get '/meet-the-staff' => 'home#meet-the-staff'
  get '/patient-resources' => 'home#patient-resources'
  get '/hours-directions' => 'home#hours-directions'
  get '/education' => 'home#education'
  # TREATMENT TYPE ARTICLES
  # HEAD & NECK
  get '/gassarian-ganglion-blockade'=>'home#gassarian-ganglion-blockade'
  get '/infraorbital-nerve-block'=>'home#infraorbital-nerve-block'
  get '/mental-nerve-block'=>'home#mental-nerve-block'
  get '/occipital-nerve-block'=>'home#occipital-nerve-block'
  get '/sphenopalatine-block'=>'home#sphenopalatine-block'
  get '/supraorbital-nerve-block'=>'home#supraorbital-nerve-block'
  get '/supratrochlear-nerve-block'=>'home#supratrochlear-nerve-block'
  get '/temporomandibular-joint-injection'=>'home#temporomandibular-joint-injection'
  get '/trigeminal-nerve-block'=>'home#trigeminal-nerve-block'
  # CERVICAL PROCEDURES
  get '/diagnostic-medial-branch-nerve-injections'=>'home#diagnostic-medial-branch-nerve-injections'
  get '/discogram'=>'home#discogram'
  get '/epidural-steroid-injection'=>'home#epidural-steroid-injection'
  get '/facet-injection'=>'home#facet-injection'
  get '/nerve-root-blocks'=>'home#nerve-root-blocks'
  get '/radiofrequency-ablation-median-branch'=>'home#radiofrequency-ablation-median-branch'
  get '/stellate-ganglion-block'=>'home#stellate-ganglion-block'
  # THORACIC
  get '/diagnostic-medial-branch-nerve-injections'=>'home#diagnostic-medial-branch-nerve-injections'
  get '/epidural-steroid-injection'=>'home#epidural-steroid-injection'
  get '/kyphoplasty'=>'home#kyphoplasty'
  get '/intercostal-nerve-blocks-ultrasound'=>'home#intercostal-nerve-blocks-ultrasound'
  get '/radiofrequency-ablation-median-branch'=>'home#radiofrequency-ablation-median-branch'
  get '/vertebroplasty'=>'home#vertebroplasty'
  # LUMBAR
  get '/biacuplasty'=>'home#biacuplasty'
  get '/diagnostic-medial-branch-nerve-injections'=>'home#diagnostic-medial-branch-nerve-injections'
  get '/discogram'=>'home#discogram'
  get '/endoscopic-discectomy'=>'home#endoscopic-discectomy'
  get '/endoscopic-rhizotomy'=>'home#endoscopic-rhizotomy'
  get '/epidural-steroid-injection'=>'home#epidural-steroid-injection'
  get '/facet-injection'=>'home#facet-injection'
  get '/intradiscal-electrothermal-therapy'=>'home#intradiscal-electrothermal-therapy'
  get '/lumbar-sympathetic-block'=>'home#lumbar-sympathetic-block'
  get '/kyphoplasty'=>'home#kyphoplasty'
  get '/mild-decompression-procedure-spinal-stenosis'=>'home#mild-decompression-procedure-spinal-stenosis'
  get '/nerve-root-blocks'=>'home#nerve-root-blocks'
  get '/piriformis-block'=>'home#piriformis-block'
  get '/radiofrequency-ablation-median-branch'=>'home#radiofrequency-ablation-median-branch'
  get '/sacroiliac-joint-injection'=>'home#sacroiliac-joint-injection'
  get '/sympathetic-blocks'=>'home#sympathetic-blocks'
  get '/vertebroplasty'=>'home#vertebroplasty'
  # ABDOMINAL / PELVIC
  get '/celiac-plexus-block-neurolysis'=>'home#celiac-plexus-block-neurolysis'
  get '/ganglion-impar-block'=>'home#ganglion-impar-block'
  get '/hypogastric-plexus-block'=>'home#hypogastric-plexus-block'
  get '/pudendal-nerve-block'=>'home#pudendal-nerve-block'
  get '/splanchnic-block'=>'home#splanchnic-block'
  # NEUROMODULATION
  get '/spinal-cord-stimulators-trials-implantations'=>'home#spinal-cord-stimulators-trials-implantations'
  get '/programming-management'=>'home#programming-management'
  get '/peripheral-nerve-pelvic-neuromodulation'=>'home#peripheral-nerve-pelvic-neuromodulation'
  # MISCELLANEOUS
  get '/baclofen-morphine-intrathecal'=>'home#baclofen-morphine-intrathecal'
  get '/epidural-blood-patch'=>'home#epidural-blood-patch'
  get '/ketamine-infusions-maintenance'=>'home#ketamine-infusions-maintenance'
  get '/joint-bursa-ultrasound-injections'=>'home#joint-bursa-ultrasound-injections'
  get '/peripheral-nerve-blocks'=>'home#peripheral-nerve-blocks'



  # PAIN ARTICLES
  get '/arthritis' => 'home#arthritis'
  get '/fibromyalgia' => 'home#fibromyalgia'
  get '/myofascial-pain' => 'home#myofascial-pain'
  get '/neck-pain' => 'home#neck-pain'
  get '/back-pain' => 'home#back-pain'
  get '/spinal-stenosis' => 'home#spinal-stenosis'
  get '/disc-herniation' => 'home#disc-herniation'
  get '/sciatica-radiculopathy' => 'home#sciatica-radiculopathy'
  get '/neuropathy-neuralgia' => 'home#neuropathy-neuralgia'
  get '/shingles-post-herpetic-neuralgia' => 'home#shingles-post-herpetic-neuralgia'
  get '/phantom-limb-pain' => 'home#phantom-limb-pain'
  get '/degenerative-disc-disease-disc-related-pain' => 'home#degenerative-disc-disease-disc-related-pain'
  get '/headaches' => 'home#headaches'
  get '/trigeminal-neuralgia' => 'home#trigeminal-neuralgia'
  get '/atypical-facial-pain' => 'home#atypical-facial-pain'
  get '/vertebral-compression-fractures' => 'home#vertebral-compression-fractures'
  get '/meralgia-paresthetica' => 'home#meralgia-paresthetica'
  get '/cancer-pain' => 'home#cancer-pain'
  get '/pelvic-pain' => 'home#pelvic-pain'
  get '/complex-regional-pain-syndrome' => 'home#complex-regional-pain-syndrome'
  get '/failed-back-surgery-syndrome' => 'home#failed-back-surgery-syndrome'
  get '/post-stroke-pain-central-pain' => 'home#post-stroke-pain-central-pain'
  get '/intractable-post-surgical-pain' => 'home#intractable-post-surgical-pain'
  get '/musculoskeletal-pain-sports-related-joint-pain' => 'home#musculoskeletal-pain-sports-related-joint-pain'


  #TREATMENT ARTICLES
  get '/head-neck-procedures' => 'home#head-neck-procedures'
  get '/cervical-procedures' => 'home#cervical-procedures'
  get '/thoracic-procedures' => 'home#thoracic-procedures'
  get '/lumbar-procedures' => 'home#lumbar-procedures'
  get '/abdominal-pelvic-procedures' => 'home#abdominal-pelvic-procedures'
  get '/neuromodulation' => 'home#neuromodulation'
  get '/miscellaneous' => 'home#miscellaneous'

  # SEO ROUTES
  get '/back-pain-doctor-new-jersey-nj'         => 'home#back-pain-doctor-new-jersey-nj'
  get '/back-pain-doctor-nyc-new-york'          => 'home#back-pain-doctor-nyc-new-york'
  get '/back-pain-management'                   => 'home#back-pain-management'
  get '/back-pain-new-york-city-ny'             => 'home#back-pain-new-york-city-ny'
  get '/back-pain-relief-new-york-city'         => 'home#back-pain-relief-new-york-city'
  get '/back-pain-specialist'                   => 'home#back-pain-specialist'
  get '/comprehensive-pain-management-clinic-nj'=> 'home#comprehensive-pain-management-clinic-nj'
  get '/doctor-for-back-pain'                   => 'home#doctor-for-back-pain'
  get '/how-to-help-back-pain'                  => 'home#how-to-help-back-pain'
  get '/injections-for-back-pain'               => 'home#injections-for-back-pain'
  get '/neck-pain-new-jersey'                   => 'home#neck-pain-new-jersey'
  get '/new-jersey-nj-pain-consultants'         => 'home#new-jersey-nj-pain-consultants'
  get '/new-jersey-pain-care-center'            => 'home#new-jersey-pain-care-center'
  get '/new-york-pain-care'                     => 'home#new-york-pain-care'
  get '/new-york-pain-management-ny'            => 'home#new-york-pain-management-ny'
  get '/nj-new-jersey-pain-management-doctors'  => 'home#nj-new-jersey-pain-management-doctors'
  get '/nyc-new-york-pain-clinic'               => 'home#nyc-new-york-pain-clinic'
  get '/pain-management-brooklyn-ny'            => 'home#pain-management-brooklyn-ny'
  get '/pain-management-clifton-ny'             => 'home#pain-management-clifton-ny'
  get '/pain-management-doctors-new-jersey-nj'  => 'home#pain-management-doctors-new-jersey-nj'
  get '/pain-management-doctors-new-york-nyc'   => 'home#pain-management-doctors-new-york-nyc'
  get '/pain-management-dr-in-nj'               => 'home#pain-management-dr-in-nj'
  get '/pain-management-in-new-jersey-nj'       => 'home#pain-management-in-new-jersey-nj'
  get '/pain-management-jersey-city-nj'         => 'home#pain-management-jersey-city-nj'
  get '/pain-management-queens-ny'              => 'home#pain-management-queens-ny'
  get '/pain-management-wayne-nj'               => 'home#pain-management-wayne-nj'
  get '/pain-physicians-ny'                     => 'home#pain-physicians-ny'

end
