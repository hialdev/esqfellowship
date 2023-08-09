<footer class="py-5 position-relative" style="background-color: #001E40; color:white">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-4 mb-5">
                <h4 class="mb-2">Get in Touch</h4>
                <ul data-aos="fade-down" data-aos-duration="1000" class="list-unstyled">
                    <li><a href="https://wa.me/{{setting('contact.wa')}}" class="d-flex py-3 align-items-center gap-3 text-decoration-none text-white">
                            <div class="d-flex align-items-center justify-content-center">
                                <span class="iconify" data-icon="fontisto:whatsapp"></span>
                            </div>
                            <p class="p-0 m-0">{{setting('contact.wa')}} - ({{setting('contact.wa_name')}})</p>
                        </a>
                    </li>
                    <li><a href="tel:{{setting('contact.telp')}}" class="d-flex py-3 align-items-center gap-3 text-decoration-none text-white">
                            <div class="d-flex align-items-center justify-content-center">
                                <span class="iconify" data-icon="teenyicons:phone-solid"></span>
                            </div>
                            <p class="p-0 m-0">{{setting('contact.telp')}} - ({{setting('contact.telp_name')}})</p>
                        </a>
                    </li>
                    <li><a href="mailto:{{setting('contact.mail')}}" class="d-flex py-3 align-items-center gap-3 text-decoration-none text-white">
                            <div class="d-flex align-items-center justify-content-center">
                                <span class="iconify" data-icon="octicon:mail-16"></span>
                            </div>
                            <p class="p-0 m-0">{{setting('contact.mail')}}</p>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-12 col-md-4 mb-5 order-first order-md-0">
                <div class="h-100 d-flex justify-content-center align-items-center">
                    <img src="{{Voyager::image(setting('site.logo'))}}" alt="Logo Footer" style="width: 10em;">
                </div>
            </div>
            <div class="col-12 col-md-4 mb-5 text-end">
                <h4 class="mb-2">Lets Meet</h4>
                <p data-aos="fade-down" data-aos-duration="1000" style="line-height: 52px;">{{setting('contact.address')}}</p>
            </div>
            <div class="col-12 pt-5 pb-2">
                <p>&copy; {{setting('site.footer')}}</p>
            </div>
        </div>
    </div>
</footer>