<!-- Footer -->
<link href="{{ asset('css/footer.css') }}" rel="stylesheet">
<footer style="margin-top: 20px;" id="footer" class="page-footer font-small blue">

    <div style="max-width: 1500px" class="container">
        <div class="row">
            <div style="margin-top: 50px" class="col-12 col-md-3">
                <div class="logo">
                    <a class="logo" href="{{ route('home') }}">
                        {{ config('app.name', 'Nghiêng Sapa') }}
                        <!-- {{-- FnGO --}} -->
                    </a>
                </div>
                <div class="row">
                    <div class="col">
                        {{__('footer.Try')}}
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-3">
                <div class="footer-title">
                    {{__('footer.Contacts')}}
                    
                    <div class="d-flex justify-content-start">
                        <hr class="hr-footer">
                    </div>

                </div>
                <p>
                    <i class="bi bi-geo-alt"></i>
                    468A Điện Biên Phủ, Tx Sapa, Lào Cai
                </p>

                <p>
                    <i class="bi bi-telephone"></i>
                    Hotline: 0869075222 
                </p>

                <p>
                    <i class="bi bi-envelope"></i>
                    letan@nghiengsapahotel.com
                </p>

                <!-- <p>
                    <i class="bi bi-envelope"></i>
                    1851010144Trung@ou.edu.vn
                </p> -->
            </div>
            <div class="col-12 col-md-2">
                <div class="footer-title">
                    {{__('footer.Links')}}
                    <div>
                        <hr class="hr-footer">
                    </div>

                </div>
                <p>
                    <a class="footer-link" href="tel:0905200419">
                        <i class="bi bi-telephone"></i>
                        0869075222
                    </a>
                </p>

                <p>
                    <a class="footer-link" href="{{route('payment.index')}}">
                        <i class="bi bi-cash-coin"></i>
                        {{__('footer.Payment')}}
                    </a>
                </p>
                <p>
                    <a class="footer-link" href="{{route('introduction.index')}}">
                        <i class="bi bi-people-fill"></i>
                        {{__('footer.Intro')}}
                    </a>
                </p>

                <!-- <p>
                    <a class="footer-link" href="">
                        <i class="bi bi-person-square"></i>
                        {{__('footer.About us')}}
                    </a>
                </p> -->
            </div>
            <div class="col-12 col-md-4">
                <div id="map" class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3690.3687192203365!2d103.84678981440095!3d22.33970234710993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x36cd41126a7d5a47%3A0x21a035ecbc4d4c87!2zNDY4YSDEkMaw4budbmcgxJBp4buHbiBCacOqbiBQaOG7pywgVFQuIFNhIFBhLCBTYSBQYSwgTMOgbyBDYWkgMzEwMDAwLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1656063048136!5m2!1svi!2s" 
                    width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">
        2022 - Nghiêng Sapa
    </div>
    <!-- Copyright -->
  
</footer>
<!-- Footer -->