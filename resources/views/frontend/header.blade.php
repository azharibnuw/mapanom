<div class="ttm-topbar-wrapper ttm-bgcolor-grey clearfix">
    <div class="container">
        <div class="ttm-topbar-content">
            <ul class="top-contact text-left">
                <li><i class="fa fa-map-marker"></i>24 Tech Roqad st Ny 10023</li>
                <li><i class="fa fa-envelope-o"></i><a href="mailto:info@example.com.com">info@example.com</a></li>
            </ul>
            <div class="topbar-right text-right">
                <ul class="top-contact">
                    <li><i class="fa fa-clock-o"></i>Office Hour: 08:00am - 6:00pm</li>
                </ul>
                <div class="ttm-social-links-wrapper list-inline pr-0">
                    <ul class="social-icons">
                        <li><a href="#" class=" tooltip-bottom" data-tooltip="Facebook"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#" class=" tooltip-bottom" data-tooltip="Twitter"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#" class=" tooltip-bottom" data-tooltip="Flickr"><i class="fa fa-flickr"></i></a>
                        </li>
                        <li><a href="#" class=" tooltip-bottom" data-tooltip="Linkedin"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div><!-- ttm-topbar-wrapper end -->

<!-- ttm-header-wrap -->
<div class="ttm-header-wrap">
    <!-- ttm-stickable-header-w -->
    <div id="ttm-stickable-header-w" class="ttm-stickable-header-w clearfix">
        <div id="site-header-menu" class="site-header-menu">
            <div class="site-header-menu-inner ttm-stickable-header">
                <div class="container">
                    <!-- site-branding -->
                    <div class="site-branding">
                        <a class="home-link" href="{{ route('home') }}" title="Altech" rel="home">
                            <img id="logo-img" class="img-center" src="{{ asset('frontafs/images/app/logonav.png') }}" alt="logo" style="max-height: 70px">
                        </a>
                    </div><!-- site-branding end -->
                    <!--site-navigation -->
                    <div id="site-navigation" class="site-navigation" data-sticky-height="70">
                        <div class="ttm-rt-contact">
                            <!-- header-icons -->
                            <div class="ttm-header-icons">
                                <div class="ttm-header-icon ttm-header-search-link">
                                    <a href="#"><i class="ti ti-search"></i></a>
                                    <div class="ttm-search-overlay">
                                        <form method="get" class="ttm-site-searchform" action="#">
                                            <div class="w-search-form-h">
                                                <div class="w-search-form-row">
                                                    <div class="w-search-input">
                                                        <input type="search" class="field searchform-s" name="s" placeholder="Type Word Then Enter...">
                                                        <button type="submit">
                                                            <i class="ti ti-search"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div><!-- header-icons end -->
                        </div>
                        <div class="ttm-menu-toggle">
                            <input type="checkbox" id="menu-toggle-form" />
                            <label for="menu-toggle-form" class="ttm-menu-toggle-block">
                                <span class="toggle-block toggle-blocks-1"></span>
                                <span class="toggle-block toggle-blocks-2"></span>
                                <span class="toggle-block toggle-blocks-3"></span>
                            </label>
                        </div>
                        <nav id="menu" class="menu">
                            <ul class="dropdown">
                                <li><a aria-current="page active has-submenu" href="{{ route('home') }}">Beranda</a></li>
                                <li><a aria-current="page" href="{{ route('guest.alur') }}">Alur</a></li>
                                <li><a aria-current="page" href="{{ route('guest.daftar') }}">Buat Akun</a></li>
                                <li><a aria-current="page" href="#contact-us">Kontak</a></li>
                                {{-- <li><a aria-current="page" href="{{ route('password.request') }}">Lupa Password</a></li> --}}
                                <li><a aria-current="page" href="{{ route('login') }}" target="_BLANK">Sign In</a></li>
                            </ul>
                        </nav>
                    </div><!-- site-navigation end-->
                </div>
            </div>
        </div>
    </div><!-- ttm-stickable-header-w end-->
</div>