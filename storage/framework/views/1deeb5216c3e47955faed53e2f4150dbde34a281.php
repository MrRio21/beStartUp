

<?php $__env->startSection('css'); ?>
	<!-- Sweet Alert CSS -->
	<link href="<?php echo e(URL::asset('plugins/sweetalert/sweetalert2.min.css')); ?>" rel="stylesheet" />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('page-header'); ?>
	<!-- PAGE HEADER -->
	<div class="page-header mt-5-7">
		<div class="page-leftheader">
			<h4 class="page-title mb-0"><?php echo e(__('My Account')); ?></h4>
			<ol class="breadcrumb mb-2">
				<li class="breadcrumb-item"><a href="<?php echo e(route('user.dashboard')); ?>"><i class="fa-solid fa-id-badge mr-2 fs-12"></i><?php echo e(__('User')); ?></a></li>
				<li class="breadcrumb-item active" aria-current="page"><a href="<?php echo e(url('#')); ?>"> <?php echo e(__('My Account')); ?></a></li>
			</ol>
		</div>
	</div>
	<!-- END PAGE HEADER -->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
	<!-- USER PROFILE PAGE -->
	<div class="row">

		<div class="col-xl-6 col-lg-6 col-md-12">
			<div class="card border-0 p-3" id="dashboard-background">
                <div class="usbg p-2" style="height: 131px; border-radius: 16px">
                    <div class="d-flex flex-row justify-content-end align-items-end h-100" style="gap: 9px" id="profile-pages">
                        <a href="<?php echo e(route('user.profile.edit')); ?>" class="fs-13">
                            <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <rect width="22" height="22" rx="4" fill="#030506"/>
                                <path d="M11.7351 6.10118L6.94595 11.1704C6.76512 11.3629 6.59012 11.742 6.55512 12.0045L6.33928 13.8945C6.26345 14.577 6.75345 15.0437 7.43012 14.927L9.30845 14.6062C9.57095 14.5595 9.93845 14.367 10.1193 14.1687L14.9085 9.09952C15.7368 8.22452 16.1101 7.22702 14.821 6.00785C13.5376 4.80035 12.5635 5.22618 11.7351 6.10118Z" stroke="white" stroke-width="0.875" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M10.936 6.94531C11.1869 8.55531 12.4935 9.78615 14.1152 9.94948" stroke="white" stroke-width="0.875" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M5.75 16.832H16.25" stroke="white" stroke-width="0.875" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </a>

                        <a href="<?php echo e(route('user.profile.defaults')); ?>" class="fs-13">
                            <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <rect width="22" height="22" rx="4" fill="#030506"/>
                                <path d="M6.14062 5.45703V12.4395C6.14062 13.0112 6.40896 13.5537 6.86979 13.8979L9.90895 16.1729C10.5565 16.657 11.449 16.657 12.0965 16.1729L15.1356 13.8979C15.5964 13.5537 15.8648 13.0112 15.8648 12.4395V5.45703H6.14062Z" stroke="white" stroke-width="0.875" stroke-miterlimit="10"/>
                                <path d="M5.1665 5.45703H16.8332" stroke="white" stroke-width="0.875" stroke-miterlimit="10" stroke-linecap="round"/>
                                <path d="M8.6665 8.66797H13.3332" stroke="white" stroke-width="0.875" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M8.6665 11.582H13.3332" stroke="white" stroke-width="0.875" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </a>
                        <a href="<?php echo e(route('user.security')); ?>" class="fs-13">
                            <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <rect width="22" height="22" rx="4" fill="#030506"/>
                                <path d="M15.5441 12.71C14.3424 13.9058 12.6215 14.2733 11.1107 13.8008L8.36322 16.5425C8.16488 16.7467 7.77405 16.8692 7.49405 16.8283L6.22238 16.6533C5.80238 16.595 5.41155 16.1983 5.34738 15.7783L5.17238 14.5067C5.13155 14.2267 5.26572 13.8358 5.45822 13.6375L8.19988 10.8958C7.73322 9.37917 8.09488 7.65833 9.29655 6.4625C11.0174 4.74167 13.8115 4.74167 15.5382 6.4625C17.2649 8.18333 17.2649 10.9892 15.5441 12.71Z" stroke="white" stroke-width="0.875" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M8.01904 14.2031L9.36071 15.5448" stroke="white" stroke-width="0.875" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M12.4585 10.418C12.9417 10.418 13.3335 10.0262 13.3335 9.54297C13.3335 9.05972 12.9417 8.66797 12.4585 8.66797C11.9752 8.66797 11.5835 9.05972 11.5835 9.54297C11.5835 10.0262 11.9752 10.418 12.4585 10.418Z" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </a>
                        <a href="<?php echo e(route('user.security.2fa')); ?>" class="fs-13">
                            <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <rect width="22" height="22" rx="4" fill="#030506"/>
                                <path d="M10.1193 5.29969L7.20842 6.39635C6.53759 6.64719 5.98926 7.44052 5.98926 8.15219V12.4864C5.98926 13.1747 6.44426 14.0789 6.99842 14.493L9.50676 16.3655C10.3293 16.9839 11.6826 16.9839 12.5051 16.3655L15.0134 14.493C15.5676 14.0789 16.0226 13.1747 16.0226 12.4864V8.15219C16.0226 7.43469 15.4743 6.64135 14.8034 6.39052L11.8926 5.29969C11.3968 5.11885 10.6034 5.11885 10.1193 5.29969Z" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M9.2793 10.9246L10.2185 11.8638L12.7268 9.35547" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </a>
                        <a href="<?php echo e(route('user.profile.delete')); ?>" class="fs-13">
                            <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <rect width="22" height="22" rx="4" fill="#030506"/>
                                <path d="M16.25 7.48698C14.3075 7.29448 12.3533 7.19531 10.405 7.19531C9.25 7.19531 8.095 7.25365 6.94 7.37031L5.75 7.48698" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M8.9585 6.90047L9.08683 6.1363C9.18016 5.58214 9.25016 5.16797 10.236 5.16797H11.7643C12.7502 5.16797 12.826 5.60547 12.9135 6.14214L13.0418 6.90047" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M14.9956 9.33203L14.6164 15.2062C14.5522 16.122 14.4997 16.8337 12.8722 16.8337H9.12724C7.49974 16.8337 7.44724 16.122 7.38307 15.2062L7.00391 9.33203" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M10.0259 13.625H11.9684" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                                <path d="M9.5415 11.293H12.4582" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg></a>
                        <?php if(auth()->user()->group == 'user' || auth()->user()->group == 'admin'): ?>
                            <?php if(config('settings.personal_openai_api') == 'allow' || config('settings.personal_sd_api') == 'allow'): ?>
                                <div class="">
                                    <div class="text-center pb-3">
                                        <a href="<?php echo e(route('user.profile.api')); ?>" class="fs-13">
                                            <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect width="22" height="22" rx="4" fill="#030506"/>
                                                <path d="M10.1193 5.29969L7.20842 6.39635C6.53759 6.64719 5.98926 7.44052 5.98926 8.15219V12.4864C5.98926 13.1747 6.44426 14.0789 6.99842 14.493L9.50676 16.3655C10.3293 16.9839 11.6826 16.9839 12.5051 16.3655L15.0134 14.493C15.5676 14.0789 16.0226 13.1747 16.0226 12.4864V8.15219C16.0226 7.43469 15.4743 6.64135 14.8034 6.39052L11.8926 5.29969C11.3968 5.11885 10.6034 5.11885 10.1193 5.29969Z" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M9.2793 10.9246L10.2185 11.8638L12.7268 9.35547" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                            <?php endif; ?>
                        <?php elseif(!is_null(auth()->user()->plan_id)): ?>
                            <?php if($check_api_feature->personal_openai_api || $check_api_feature->personal_sd_api): ?>
                                <div class="">
                                    <div class="text-center pb-3">
                                        <a href="<?php echo e(route('user.profile.api')); ?>" class="fs-13">
                                            <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <rect width="22" height="22" rx="4" fill="#030506"/>
                                                <path d="M16.25 7.48698C14.3075 7.29448 12.3533 7.19531 10.405 7.19531C9.25 7.19531 8.095 7.25365 6.94 7.37031L5.75 7.48698" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M8.9585 6.90047L9.08683 6.1363C9.18016 5.58214 9.25016 5.16797 10.236 5.16797H11.7643C12.7502 5.16797 12.826 5.60547 12.9135 6.14214L13.0418 6.90047" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M14.9956 9.33203L14.6164 15.2062C14.5522 16.122 14.4997 16.8337 12.8722 16.8337H9.12724C7.49974 16.8337 7.44724 16.122 7.38307 15.2062L7.00391 9.33203" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M10.0259 13.625H11.9684" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M9.5415 11.293H12.4582" stroke="white" stroke-width="0.875" stroke-linecap="round" stroke-linejoin="round"/>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                            <?php endif; ?>
                        <?php endif; ?>

                    </div>
                </div>
                <div class="widget-user-image overflow-hidden mx-auto mt-5" style="position: relative; top: -75px;"><img alt="User Avatar" class="rounded-circle" src="<?php if(auth()->user()->profile_photo_path): ?><?php echo e(asset(auth()->user()->profile_photo_path)); ?> <?php else: ?> <?php echo e(URL::asset('img/users/avatar.jpg')); ?> <?php endif; ?>"></div>
				<div class="card-body text-center" style="position: relative ;top: -75px">
					<div>
						<h4 class="mb-1 mt-1  font-weight-bold fs-16"><?php echo e(auth()->user()->name); ?></h4>
						<h6 class="font-weight-bold fs-12"><?php echo e(auth()->user()->job_role); ?></h6>
					</div>
                    <div class="card-foote row p-0 d-flex justify-content-center align-items-sm-center">
                        <div class="row col-6  text-center pt-4 pb-4 ">
                            <div class="col-sm">
                                <h4 class="mb-3 mt-1 font-weight-800  fs-16"><?php if(auth()->user()->available_words == -1): ?> <?php echo e(__('Unlimited')); ?> <?php else: ?> <?php echo e(App\Services\HelperService::userAvailableWords()); ?> <?php endif; ?></h4>
                                <h6 class="fs-12"><?php echo e(__('Words Left')); ?></h6>
                            </div>
                            <?php if(\Spatie\Permission\PermissionServiceProvider::bladeMethodWrapper('hasRole', 'user|subscriber|admin')): ?>
                            <?php if(config('settings.image_feature_user') == 'allow'): ?>
                                <div class="col-sm">
                                    <h4 class="mb-3 mt-1 font-weight-800  fs-16"><?php if(auth()->user()->available_images == -1): ?> <?php echo e(__('Unlimited')); ?> <?php else: ?> <?php echo e(App\Services\HelperService::userAvailableImages()); ?> <?php endif; ?></h4>
                                    <h6 class="fs-12"><?php echo e(__('Images Left')); ?></h6>
                                </div>
                            <?php endif; ?>
                            <?php endif; ?>
                        </div>
                        <?php if(config('settings.voiceover_feature_user') == 'allow' || config('settings.whisper_feature_user') == 'allow'): ?>
                            <div class="row col-6 text-center pt-4 pb-4">
                                <?php if(\Spatie\Permission\PermissionServiceProvider::bladeMethodWrapper('hasRole', 'user|subscriber|admin')): ?>
                                <?php if(config('settings.voiceover_feature_user') == 'allow'): ?>
                                    <div class="col-sm">
                                        <h4 class="mb-3 mt-1 font-weight-800  fs-16"><?php if(auth()->user()->available_chars == -1): ?> <?php echo e(__('Unlimited')); ?> <?php else: ?> <?php echo e(App\Services\HelperService::userAvailableChars()); ?> <?php endif; ?></h4>
                                        <h6 class="fs-12"><?php echo e(__('Characters Left')); ?></h6>
                                    </div>
                                <?php endif; ?>
                                <?php endif; ?>
                                <?php if(\Spatie\Permission\PermissionServiceProvider::bladeMethodWrapper('hasRole', 'user|subscriber|admin')): ?>
                                <?php if(config('settings.whisper_feature_user') == 'allow'): ?>
                                    <div class="col-sm">
                                        <h4 class="mb-3 mt-1 font-weight-800  fs-16"><?php if(auth()->user()->available_minutes == -1): ?> <?php echo e(__('Unlimited')); ?> <?php else: ?> <?php echo e(App\Services\HelperService::userAvailableMinutes()); ?> <?php endif; ?></h4>
                                        <h6 class="fs-12"><?php echo e(__('Minutes Left')); ?></h6>
                                    </div>
                                <?php endif; ?>
                                <?php endif; ?>
                            </div>
                        <?php endif; ?>
                    </div>
				</div>

			</div>

		</div>

		<div class="col-xl-6 col-lg-6 col-md-12">
			<div class="row">

				<div class="col-lg-12 col-md-12 col-sm-12">
					<div class="row">
						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="card overflow-hidden border-0">
								<div class="card-body d-flex flex-column-reverse justify-content-start">
									<div class="usage-info w-100">
										<p class=" mb-3 fs-12 font-weight-bold text-left"><?php echo e(__('Documents Created')); ?></p>
										<h2 class="mb-2 number-font fs-20 text-left"><?php echo e(number_format($data['contents'])); ?> <span class="text-muted fs-18"><?php echo e(__('documents')); ?></span></h2>
									</div>
									<div class="usage-icon text-left">
                                        <svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <circle cx="28" cy="28" r="28" fill="#F4F7FE"/>
                                            <path d="M26.9133 32.8333L26.7533 32.7533C26.1067 32.42 25.58 31.8933 25.2467 31.2467L25.1667 31.0867C24.8467 30.4533 23.94 30.4533 23.6133 31.0867L23.5333 31.2467C23.2 31.8933 22.6733 32.42 22.0267 32.7533L21.8667 32.8333C21.2333 33.1533 21.2333 34.06 21.8667 34.3867L22.0267 34.4667C22.6733 34.8 23.2 35.3267 23.5333 35.9733L23.6133 36.1333C23.9333 36.7667 24.84 36.7667 25.1667 36.1333L25.2467 35.9733C25.58 35.3267 26.1067 34.8 26.7533 34.4667L26.9133 34.3867C27.5467 34.0667 27.5467 33.16 26.9133 32.8333Z" fill="#8646F4"/>
                                            <path d="M33.7733 26.0933L33.56 25.9867C32.8933 25.6467 32.36 25.1133 32.0133 24.44L31.9067 24.2267C31.54 23.5067 30.8067 23.06 30 23.06C29.1933 23.06 28.46 23.5067 28.0933 24.2267L27.9867 24.44C27.6467 25.1067 27.1133 25.64 26.44 25.9867L26.2267 26.0933C25.5067 26.46 25.06 27.1933 25.06 28C25.06 28.8067 25.5067 29.54 26.2267 29.9067L26.44 30.0133C27.1067 30.3533 27.64 30.8867 27.9867 31.56L28.0933 31.7733C28.46 32.4933 29.1933 32.94 30 32.94C30.8067 32.94 31.54 32.4933 31.9067 31.7733L32.0133 31.56C32.3533 30.8933 32.8867 30.36 33.56 30.0133L33.7733 29.9067C34.4933 29.54 34.94 28.8067 34.94 28C34.94 27.1933 34.4933 26.46 33.7733 26.0933ZM32.8667 28.1333L32.6533 28.24C31.6067 28.7733 30.7733 29.6067 30.24 30.6533L30.1333 30.8667C30.1333 30.8667 30.0933 30.9467 30.0067 30.9467C29.92 30.9467 29.8867 30.8867 29.88 30.8667L29.7733 30.6533C29.24 29.6067 28.4067 28.7733 27.36 28.24L27.1467 28.1333C27.1467 28.1333 27.0667 28.0933 27.0667 28.0067C27.0667 27.92 27.1267 27.8867 27.1467 27.88L27.36 27.7733C28.4067 27.24 29.24 26.4067 29.7733 25.36L29.88 25.1467C29.88 25.1467 29.92 25.0667 30.0067 25.0667C30.0933 25.0667 30.1267 25.1267 30.1333 25.1467L30.24 25.36C30.7733 26.4067 31.6067 27.24 32.6533 27.7733L32.8667 27.88C32.8667 27.88 32.9467 27.92 32.9467 28.0067C32.9467 28.0933 32.8867 28.1267 32.8667 28.1333Z" fill="#8646F4"/>
                                            <path d="M33.7533 19H30.8267C30.24 16.7067 28.1533 15 25.68 15H20.9867C18.0533 15 15.6667 17.3867 15.6667 20.32V23.2267C15.24 24.1467 15 25.1667 15 26.2467V33.7533C15 37.7467 18.2533 41 22.2467 41H33.7533C37.7467 41 41 37.7467 41 33.7533V26.2467C41 22.2533 37.7467 19 33.7533 19ZM20.9867 17H25.68C27.04 17 28.2133 17.8267 28.72 19H22.24C20.5067 19 18.9133 19.6133 17.66 20.6333V20.3133C17.66 18.48 19.1467 16.9933 20.98 16.9933L20.9867 17ZM39 33.7533C39 36.6467 36.6467 39 33.7533 39H22.2467C19.3533 39 17 36.6467 17 33.7533V26.2467C17 23.3533 19.3533 21 22.2467 21H33.7533C36.6467 21 39 23.3533 39 26.2467V33.7533Z" fill="#8646F4"/>
                                        </svg>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="card overflow-hidden border-0">
								<div class="card-body d-flex flex-column-reverse justify-content-start">
									<div class="usage-info w-100">
										<p class=" mb-3 fs-12 font-weight-bold text-left"><?php echo e(__('Words Generated')); ?></p>
										<h2 class="mb-2 number-font fs-20 text-left"><?php echo e(number_format($data['words'])); ?> <span class="text-muted fs-18"><?php echo e(__('words')); ?></span></h2>
									</div>
									<div class="usage-icon text-left">
                                        <svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <circle cx="28" cy="28" r="28" fill="#F4F7FE"/>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M22.6667 21.3333C22.6667 20.5969 23.2636 20 24 20H32C32.7364 20 33.3333 20.5969 33.3333 21.3333C33.3333 22.0697 32.7364 22.6666 32 22.6666H29.3333V33.3333H32C32.7364 33.3333 33.3333 33.9303 33.3333 34.6666C33.3333 35.403 32.7364 36 32 36H24C23.2636 36 22.6667 35.403 22.6667 34.6666C22.6667 33.9303 23.2636 33.3333 24 33.3333H26.6667V22.6666H24C23.2636 22.6666 22.6667 22.0697 22.6667 21.3333Z" fill="#8646F4"/>
                                            <path d="M37.3333 41.3333C37.3333 42.0697 36.7364 42.6666 36 42.6666C35.2636 42.6666 34.6667 42.0697 34.6667 41.3333C34.6667 40.5969 35.2636 40 36 40C36.7364 40 37.3333 40.5969 37.3333 41.3333Z" fill="#8646F4"/>
                                            <path d="M42.6667 36C42.6667 36.7363 42.0697 37.3333 41.3333 37.3333C40.597 37.3333 40 36.7363 40 36C40 35.2636 40.597 34.6666 41.3333 34.6666C42.0697 34.6666 42.6667 35.2636 42.6667 36Z" fill="#8646F4"/>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M24.0062 41.7529C23.7744 42.3738 23.0832 42.6893 22.4623 42.4575C18.4404 40.9564 15.2098 37.8401 13.5596 33.8971C13.3038 33.2857 13.592 32.5827 14.2034 32.3269C14.8147 32.071 15.5177 32.3592 15.7736 32.9706C17.1683 36.3032 19.9021 38.9402 23.3015 40.209C23.9224 40.4408 24.2379 41.132 24.0062 41.7529Z" fill="#8646F4"/>
                                            <path fill-rule="evenodd" clip-rule="evenodd" d="M41.7538 24.0277C41.133 24.2599 40.4416 23.9449 40.2094 23.3242C38.9305 19.906 36.2628 17.1609 32.8924 15.7766C32.2794 15.5248 31.9865 14.8238 32.2383 14.2107C32.4901 13.5977 33.1912 13.3048 33.8043 13.5566C37.7902 15.1937 40.9435 18.4373 42.4572 22.4833C42.6894 23.104 42.3745 23.7954 41.7538 24.0277Z" fill="#8646F4"/>
                                            <path d="M16.9474 14.1133C17.1133 13.4289 18.0867 13.4289 18.2526 14.1133L18.7092 15.9964C18.7685 16.2407 18.9593 16.4315 19.2036 16.4907L21.0867 16.9474C21.7711 17.1133 21.7711 18.0866 21.0867 18.2526L19.2036 18.7092C19.1731 18.7166 19.1434 18.7261 19.1146 18.7374C18.9136 18.817 18.7611 18.9898 18.7092 19.2036L18.2526 21.0867C18.2422 21.1295 18.2287 21.1696 18.2124 21.207C17.9682 21.7684 17.103 21.7283 16.9474 21.0867L16.4908 19.2036C16.4871 19.1883 16.4828 19.1733 16.4781 19.1584C16.4074 18.9359 16.2255 18.7648 15.9964 18.7092L14.1133 18.2526C14.0705 18.2422 14.0304 18.2287 13.993 18.2124C13.4316 17.9681 13.4717 17.1029 14.1133 16.9474L15.9964 16.4907C16.2407 16.4315 16.4315 16.2407 16.4908 15.9964L16.9474 14.1133Z" fill="#8646F4"/>
                                        </svg>
									</div>
								</div>
							</div>
						</div>
						<?php if(\Spatie\Permission\PermissionServiceProvider::bladeMethodWrapper('hasRole', 'user|subscriber|admin')): ?>
            				<?php if(config('settings.image_feature_user') == 'allow'): ?>
								<div class="col-lg-4 col-md-6 col-sm-12">
									<div class="card overflow-hidden border-0">
										<div class="card-body d-flex flex-column-reverse justify-content-start">
											<div class="usage-info w-100">
												<p class=" mb-3 fs-12 font-weight-bold text-left"><?php echo e(__('Images Created')); ?></p>
												<h2 class="mb-2 number-font fs-20 text-left"><?php echo e(number_format($data['images'])); ?> <span class="text-muted fs-18"><?php echo e(__('images')); ?></span></h2>
											</div>
											<div class="usage-icon text-left">
                                                <svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <circle cx="28" cy="28" r="28" fill="#F4F7FE"/>
                                                    <path d="M27.6668 21.6667C27.6668 22.2267 27.9735 22.7333 28.4735 22.9867L30.4802 24.0067C31.1335 24.34 31.6602 24.8667 31.9935 25.52L33.0135 27.5267C33.2668 28.0267 33.7735 28.3333 34.3335 28.3333C34.8935 28.3333 35.4002 28.0267 35.6535 27.5267L36.6735 25.52C37.0068 24.8667 37.5335 24.34 38.1868 24.0067L40.1935 22.9867C40.6935 22.7333 41.0002 22.2267 41.0002 21.6667C41.0002 21.1067 40.6935 20.6 40.1935 20.3467L38.1868 19.3267C37.5335 18.9933 37.0068 18.4667 36.6735 17.8133L35.6535 15.8067C35.4002 15.3067 34.8935 15 34.3335 15C33.7735 15 33.2668 15.3067 33.0135 15.8067L31.9935 17.8133C31.6602 18.4667 31.1335 18.9933 30.4802 19.3267L28.4735 20.3467C27.9735 20.6 27.6668 21.1067 27.6668 21.6667ZM31.3868 21.1067C32.4202 20.58 33.2468 19.7533 33.7735 18.72L34.3335 17.62L34.8935 18.72C35.4202 19.7533 36.2468 20.58 37.2802 21.1067L38.3802 21.6667L37.2802 22.2267C36.2468 22.7533 35.4202 23.58 34.8935 24.6133L34.3335 25.7133L33.7735 24.6133C33.2468 23.58 32.4202 22.7533 31.3868 22.2267L30.2868 21.6667L31.3868 21.1067Z" fill="#8646F4"/>
                                                    <path d="M22.6668 24.6667C23.7714 24.6667 24.6668 23.7712 24.6668 22.6667C24.6668 21.5621 23.7714 20.6667 22.6668 20.6667C21.5623 20.6667 20.6668 21.5621 20.6668 22.6667C20.6668 23.7712 21.5623 24.6667 22.6668 24.6667Z" fill="#8646F4"/>
                                                    <path d="M40.0002 25.6667C39.4468 25.6667 39.0002 26.1133 39.0002 26.6667V33.3333C39.0002 33.4133 38.9935 33.4933 38.9868 33.5733L36.0602 31.06C34.6735 29.8667 32.6602 29.8667 31.2735 31.06L29.7268 32.3933L25.0935 28.4133C23.7068 27.22 21.6935 27.22 20.3068 28.4133L17.0068 31.2533V22.6733C17.0068 19.5467 19.5468 17.0067 22.6735 17.0067H29.3402C29.8935 17.0067 30.3402 16.56 30.3402 16.0067C30.3402 15.4533 29.8935 15.0067 29.3402 15.0067H22.6735C18.4468 15.0067 15.0068 18.4467 15.0068 22.6733V33.34C15.0068 37.5667 18.4468 41.0067 22.6735 41.0067H33.3402C37.5668 41.0067 41.0068 37.5667 41.0068 33.34V26.6733C41.0068 26.12 40.5602 25.6733 40.0068 25.6733L40.0002 25.6667ZM17.0268 33.86L21.6068 29.9267C22.2402 29.38 23.1602 29.3867 23.7868 29.9267L28.1868 33.7067L22.0668 38.9667C19.3935 38.6867 17.2735 36.54 17.0268 33.86ZM33.3335 39H25.1002L32.5802 32.5733C33.2135 32.0267 34.1335 32.0267 34.7602 32.5733L38.4535 35.7467C37.5468 37.6667 35.5935 39 33.3335 39Z" fill="#8646F4"/>
                                                </svg>
											</div>
										</div>
									</div>
								</div>
							<?php endif; ?>
						<?php endif; ?>
						<?php if(\Spatie\Permission\PermissionServiceProvider::bladeMethodWrapper('hasRole', 'user|subscriber|admin')): ?>
            				<?php if(config('settings.voiceover_feature_user') == 'allow'): ?>
								<div class="col-lg-4 col-md-6 col-sm-12">
									<div class="card overflow-hidden border-0">
										<div class="card-body d-flex flex-column-reverse justify-content-start">
											<div class="usage-info w-100">
												<p class=" mb-3 fs-12 font-weight-bold text-left"><?php echo e(__('Voiceover Tasks')); ?></p>
												<h2 class="mb-2 number-font fs-20 text-left"><?php echo e(number_format($data['synthesized'])); ?> <span class="text-muted fs-18"><?php echo e(__('tasks')); ?></span></h2>
											</div>
											<div class="usage-icon text-left">
                                                <svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <circle cx="28" cy="28" r="28" fill="#F4F7FE"/>
                                                    <path d="M40.3266 18.2534L40.2132 18.1934C39.7532 17.9601 39.3732 17.5801 39.1399 17.1201L39.0799 17.0068C38.8466 16.5534 38.2066 16.5534 37.9732 17.0068L37.9132 17.1201C37.6799 17.5801 37.2999 17.9601 36.8399 18.1934L36.7266 18.2534C36.2732 18.4868 36.2732 19.1268 36.7266 19.3601L36.8399 19.4201C37.2999 19.6534 37.6799 20.0334 37.9132 20.4934L37.9732 20.6068C38.2066 21.0601 38.8466 21.0601 39.0799 20.6068L39.1399 20.4934C39.3732 20.0334 39.7532 19.6534 40.2132 19.4201L40.3266 19.3601C40.7799 19.1268 40.7799 18.4868 40.3266 18.2534Z" fill="#8646F4"/>
                                                    <path d="M37.5266 28.8934L37.3666 28.8134C36.7199 28.4801 36.1932 27.9534 35.8599 27.3068L35.7799 27.1468C35.4599 26.5134 34.5532 26.5134 34.2266 27.1468L34.1466 27.3068C33.8132 27.9534 33.2866 28.4801 32.6399 28.8134L32.4799 28.8934C31.8466 29.2134 31.8466 30.1201 32.4799 30.4468L32.6399 30.5268C33.2866 30.8601 33.8132 31.3868 34.1466 32.0334L34.2266 32.1934C34.5466 32.8268 35.4532 32.8268 35.7799 32.1934L35.8599 32.0334C36.1932 31.3868 36.7199 30.8601 37.3666 30.5268L37.5266 30.4468C38.1599 30.1268 38.1599 29.2201 37.5266 28.8934Z" fill="#8646F4"/>
                                                    <path d="M33.5066 23.4068L33.7199 23.3001C34.4399 22.9334 34.8866 22.2001 34.8866 21.3868C34.8866 20.5734 34.4399 19.8468 33.7199 19.4734L33.5066 19.3668C32.8399 19.0268 32.3066 18.4934 31.9666 17.8268L31.8599 17.6134C31.4932 16.8934 30.7599 16.4468 29.9532 16.4468C29.1466 16.4468 28.4132 16.8934 28.0399 17.6134L27.9332 17.8268C27.5932 18.4934 27.0599 19.0268 26.3932 19.3668L26.1799 19.4734C25.4599 19.8401 25.0132 20.5734 25.0132 21.3801C25.0132 22.1868 25.4599 22.9201 26.1799 23.2934L26.3932 23.4001C27.0599 23.7401 27.5932 24.2734 27.9332 24.9401L28.0399 25.1534C28.4066 25.8734 29.1399 26.3201 29.9532 26.3201C30.7666 26.3201 31.4932 25.8734 31.8666 25.1534L31.9732 24.9401C32.3132 24.2734 32.8466 23.7401 33.5132 23.4001L33.5066 23.4068ZM30.1799 24.0401L30.0732 24.2534C30.0732 24.2534 30.0332 24.3334 29.9466 24.3334C29.8599 24.3334 29.8266 24.2734 29.8199 24.2534L29.7132 24.0401C29.1799 22.9934 28.3466 22.1601 27.2999 21.6268L27.0866 21.5201C27.0866 21.5201 27.0066 21.4801 27.0066 21.3934C27.0066 21.3068 27.0666 21.2734 27.0866 21.2668L27.2999 21.1601C28.3466 20.6268 29.1799 19.7934 29.7132 18.7468L29.8199 18.5334C29.8199 18.5334 29.8599 18.4534 29.9466 18.4534C30.0332 18.4534 30.0666 18.5068 30.0732 18.5334L30.1799 18.7468C30.7132 19.7934 31.5466 20.6268 32.5932 21.1601L32.8066 21.2668C32.8066 21.2668 32.8866 21.3068 32.8866 21.3934C32.8866 21.4801 32.8266 21.5134 32.8066 21.5201L32.5932 21.6268C31.5466 22.1601 30.7132 22.9934 30.1799 24.0401Z" fill="#8646F4"/>
                                                    <path d="M23.4999 24.8268C22.7666 24.0934 21.7332 23.8201 20.7266 24.0934C19.7266 24.3668 18.9732 25.1268 18.7132 26.1334L16.8932 33.1468L15.8932 34.1468C14.4399 35.6001 14.4399 37.9734 15.8932 39.4268L16.5732 40.1068C17.2999 40.8334 18.2599 41.2001 19.2132 41.2001C20.1666 41.2001 21.1266 40.8334 21.8532 40.1068L22.8732 39.0868L29.7199 36.9801C30.6866 36.6801 31.4066 35.9201 31.6532 34.9401C31.8999 33.9601 31.6132 32.9468 30.8999 32.2334L23.4999 24.8268ZM20.4466 38.6934C19.7732 39.3668 18.6666 39.3668 17.9932 38.6934L17.3132 38.0134C16.6399 37.3401 16.6399 36.2334 17.3132 35.5601L17.7266 35.1468L20.8599 38.2801L20.4466 38.6934ZM29.7199 34.4601C29.6866 34.6001 29.5599 34.9468 29.1399 35.0734L22.6266 37.0734L18.9066 33.3534L20.6466 26.6334C20.7599 26.2001 21.1066 26.0601 21.2532 26.0201C21.3932 25.9801 21.7666 25.9268 22.0866 26.2401L29.4932 33.6468C29.7999 33.9534 29.7532 34.3201 29.7199 34.4601Z" fill="#8646F4"/>
                                                </svg>
											</div>
										</div>
									</div>
								</div>
							<?php endif; ?>
						<?php endif; ?>
						<?php if(\Spatie\Permission\PermissionServiceProvider::bladeMethodWrapper('hasRole', 'user|subscriber|admin')): ?>
            				<?php if(config('settings.whisper_feature_user') == 'allow'): ?>
								<div class="col-lg-4 col-md-6 col-sm-12">
									<div class="card overflow-hidden border-0">
										<div class="card-body d-flex flex-column-reverse justify-content-start">
											<div class="usage-info w-100">
												<p class=" mb-3 fs-12 font-weight-bold text-left"><?php echo e(__('Audio Transcribed')); ?></p>
												<h2 class="mb-2 number-font fs-20 text-left"><?php echo e(number_format($data['transcribed'])); ?> <span class="text-muted fs-18"><?php echo e(__('audio files')); ?></span></h2>
											</div>
											<div class="usage-icon text-left">
                                                <svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <circle cx="28" cy="28" r="28" fill="#F4F7FE"/>
                                                    <path d="M18.7976 18.1354C23.7015 14.0401 30.8625 13.7988 36.11 17.4271L35.8946 15.4359C35.8059 14.7308 36.3237 14.0901 37.0571 14.0086C37.7883 13.9273 38.4515 14.4335 38.5426 15.1379L39.2088 20.6315C39.2614 21.0116 39.1363 21.3953 38.8648 21.6761L38.8492 21.6922L38.7638 21.7635L38.7626 21.7646C38.5093 21.9745 38.1841 22.0832 37.8518 22.0713L33.1749 22.8461L33.1221 22.8422C32.3895 22.7873 31.8362 22.1699 31.8853 21.4623C31.9321 20.7886 32.508 20.2744 33.1944 20.2691L34.7233 19.6286C29.905 16.1766 23.1225 16.8858 19.2734 21.3437C15.2749 25.9746 15.9462 32.9081 20.7862 36.8284C25.0831 40.3088 31.3199 40.286 35.5119 36.784L35.5179 36.7792C38.1982 34.6225 39.6069 31.3236 39.2885 27.9427C39.2166 27.2352 39.7511 26.606 40.4867 26.5423C41.2189 26.479 41.869 27.0003 41.9418 27.7062L41.9421 27.7089C42.3481 31.9218 40.6008 36.0413 37.2607 38.7402C31.4229 43.6131 22.5621 42.9446 17.4663 37.2591C12.3698 31.5728 12.9599 23.0107 18.7976 18.1354Z" fill="#8646F4"/>
                                                    <path d="M26.2035 23.351C25.9822 22.4385 24.6844 22.4385 24.4632 23.351L23.8543 25.8619C23.7753 26.1876 23.521 26.442 23.1952 26.521L20.6844 27.1298C19.7719 27.3511 19.7719 28.6489 20.6844 28.8702L23.1952 29.479C23.521 29.558 23.7753 29.8124 23.8543 30.1382L24.4632 32.649C24.6844 33.5615 25.9822 33.5615 26.2035 32.649L26.8123 30.1382C26.8913 29.8124 27.1457 29.558 27.4715 29.479L29.9823 28.8702C30.8948 28.6489 30.8948 27.3511 29.9823 27.1298L27.4715 26.521C27.1457 26.442 26.8913 26.1876 26.8123 25.8619L26.2035 23.351Z" fill="#8646F4"/>
                                                    <path d="M29.3333 34.6667C29.3333 35.403 29.9303 36 30.6667 36C31.4031 36 32 35.403 32 34.6667C32 33.9303 31.4031 33.3333 30.6667 33.3333C29.9303 33.3333 29.3333 33.9303 29.3333 34.6667Z" fill="#8646F4"/>
                                                    <path d="M34.6667 29.3333C33.9303 29.3333 33.3333 28.7364 33.3333 28C33.3333 27.2636 33.9303 26.6667 34.6667 26.6667C35.4031 26.6667 36 27.2636 36 28C36 28.7364 35.4031 29.3333 34.6667 29.3333Z" fill="#8646F4"/>
                                                </svg>
											</div>
										</div>
									</div>
								</div>
							<?php endif; ?>
						<?php endif; ?>
						<?php if(\Spatie\Permission\PermissionServiceProvider::bladeMethodWrapper('hasRole', 'user|subscriber|admin')): ?>
            				<?php if(config('settings.code_feature_user') == 'allow'): ?>
								<div class="col-lg-4 col-md-6 col-sm-12">
									<div class="card overflow-hidden border-0">
										<div class="card-body d-flex flex-column-reverse justify-content-start">
											<div class="usage-info w-100">
												<p class=" mb-3 fs-12 font-weight-bold text-left"><?php echo e(__('Codes Generated')); ?></p>
												<h2 class="mb-2 number-font fs-20 text-left"><?php echo e(number_format($data['codes'])); ?> <span class="text-muted fs-18"><?php echo e(__('codes')); ?></span></h2>
											</div>
											<div class="usage-icon text-left">
                                                <svg width="56" height="56" viewBox="0 0 56 56" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <circle cx="28" cy="28" r="28" fill="#F4F7FE"/>
                                                    <path d="M24.8935 27.8067L24.8135 27.9667C24.4802 28.6134 23.9535 29.1401 23.3068 29.4734L23.1468 29.5534C22.5135 29.8734 22.5135 30.7801 23.1468 31.1067L23.3068 31.1867C23.9535 31.5201 24.4802 32.0467 24.8135 32.6934L24.8935 32.8534C25.2135 33.4867 26.1202 33.4867 26.4468 32.8534L26.5268 32.6934C26.8602 32.0467 27.3868 31.5201 28.0335 31.1867L28.1935 31.1067C28.8268 30.7867 28.8268 29.8801 28.1935 29.5534L28.0335 29.4734C27.3868 29.1401 26.8602 28.6134 26.5268 27.9667L26.4468 27.8067C26.1268 27.1734 25.2202 27.1734 24.8935 27.8067Z" fill="#8646F4"/>
                                                    <path d="M35.3335 27.6667C34.7802 27.6667 34.3335 28.1134 34.3335 28.6667V32.5601C34.3335 33.5401 33.5402 34.3334 32.5602 34.3334H23.4335C22.4535 34.3334 21.6602 33.5401 21.6602 32.5601V23.4334C21.6602 22.4534 22.4535 21.6601 23.4335 21.6601H27.3268C27.8802 21.6601 28.3268 21.2134 28.3268 20.6601C28.3268 20.1067 27.8802 19.6601 27.3268 19.6601H23.4335C21.3535 19.6601 19.6602 21.3534 19.6602 23.4334V32.5601C19.6602 34.6401 21.3535 36.3334 23.4335 36.3334H32.5602C34.6402 36.3334 36.3335 34.6401 36.3335 32.5601V28.6667C36.3335 28.1134 35.8868 27.6667 35.3335 27.6667Z" fill="#8646F4"/>
                                                    <path d="M40.6668 24.2934C41.0335 24.2934 41.3335 23.9934 41.3335 23.6267V22.9601C41.3335 22.5934 41.0335 22.2934 40.6668 22.2934H38.9068C38.4668 19.6334 36.3668 17.5334 33.7068 17.0934V15.3334C33.7068 14.9667 33.4068 14.6667 33.0402 14.6667H32.3735C32.0068 14.6667 31.7068 14.9667 31.7068 15.3334V17.0001H30.5668V15.3334C30.5668 14.9667 30.2668 14.6667 29.9002 14.6667H29.2335C28.8668 14.6667 28.5668 14.9667 28.5668 15.3334V17.0001H27.4268V15.3334C27.4268 14.9667 27.1268 14.6667 26.7602 14.6667H26.0935C25.7268 14.6667 25.4268 14.9667 25.4268 15.3334V17.0001H24.2868V15.3334C24.2868 14.9667 23.9868 14.6667 23.6202 14.6667H22.9535C22.5868 14.6667 22.2868 14.9667 22.2868 15.3334V17.0934C19.6268 17.5334 17.5268 19.6334 17.0868 22.2934H15.3268C14.9602 22.2934 14.6602 22.5934 14.6602 22.9601V23.6267C14.6602 23.9934 14.9602 24.2934 15.3268 24.2934H16.9935V25.4334H15.3268C14.9602 25.4334 14.6602 25.7334 14.6602 26.1001V26.7667C14.6602 27.1334 14.9602 27.4334 15.3268 27.4334H16.9935V28.5734H15.3268C14.9602 28.5734 14.6602 28.8734 14.6602 29.2401V29.9067C14.6602 30.2734 14.9602 30.5734 15.3268 30.5734H16.9935V31.7134H15.3268C14.9602 31.7134 14.6602 32.0134 14.6602 32.3801V33.0467C14.6602 33.4134 14.9602 33.7134 15.3268 33.7134H17.0868C17.5268 36.3734 19.6268 38.4734 22.2868 38.9134V40.6734C22.2868 41.0401 22.5868 41.3401 22.9535 41.3401H23.6202C23.9868 41.3401 24.2868 41.0401 24.2868 40.6734V39.0067H25.4268V40.6734C25.4268 41.0401 25.7268 41.3401 26.0935 41.3401H26.7602C27.1268 41.3401 27.4268 41.0401 27.4268 40.6734V39.0067H28.5668V40.6734C28.5668 41.0401 28.8668 41.3401 29.2335 41.3401H29.9002C30.2668 41.3401 30.5668 41.0401 30.5668 40.6734V39.0067H31.7068V40.6734C31.7068 41.0401 32.0068 41.3401 32.3735 41.3401H33.0402C33.4068 41.3401 33.7068 41.0401 33.7068 40.6734V38.9134C36.3668 38.4734 38.4668 36.3734 38.9068 33.7134H40.6668C41.0335 33.7134 41.3335 33.4134 41.3335 33.0467V32.3801C41.3335 32.0134 41.0335 31.7134 40.6668 31.7134H39.0002V30.5734H40.6668C41.0335 30.5734 41.3335 30.2734 41.3335 29.9067V29.2401C41.3335 28.8734 41.0335 28.5734 40.6668 28.5734H39.0002V27.4334H40.6668C41.0335 27.4334 41.3335 27.1334 41.3335 26.7667V26.1001C41.3335 25.7334 41.0335 25.4334 40.6668 25.4334H39.0002V24.2934H40.6668ZM37.0002 32.6667C37.0002 35.0534 35.0535 37.0001 32.6668 37.0001H23.3335C20.9468 37.0001 19.0002 35.0534 19.0002 32.6667V23.3334C19.0002 20.9467 20.9468 19.0001 23.3335 19.0001H32.6668C35.0535 19.0001 37.0002 20.9467 37.0002 23.3334V32.6667Z" fill="#8646F4"/>
                                                    <path d="M35.0535 22.8134L34.8402 22.7067C34.1735 22.3667 33.6402 21.8334 33.3002 21.1667L33.1935 20.9534C32.8268 20.2334 32.0935 19.7867 31.2868 19.7867C30.4802 19.7867 29.7468 20.2334 29.3735 20.9534L29.2668 21.1667C28.9268 21.8334 28.3935 22.3667 27.7268 22.7067L27.5135 22.8134C26.7935 23.1801 26.3468 23.9134 26.3468 24.7201C26.3468 25.5267 26.7935 26.2601 27.5135 26.6334L27.7268 26.7401C28.3935 27.0801 28.9268 27.6134 29.2668 28.2801L29.3735 28.4934C29.7402 29.2134 30.4735 29.6601 31.2868 29.6601C32.1002 29.6601 32.8268 29.2134 33.2002 28.4934L33.3068 28.2801C33.6468 27.6134 34.1802 27.0801 34.8468 26.7401L35.0602 26.6334C35.7802 26.2667 36.2268 25.5334 36.2268 24.7201C36.2268 23.9067 35.7802 23.1801 35.0602 22.8067L35.0535 22.8134ZM34.1468 24.8534L33.9335 24.9601C32.8868 25.4934 32.0535 26.3267 31.5202 27.3734L31.4135 27.5867C31.4135 27.5867 31.3735 27.6667 31.2868 27.6667C31.2002 27.6667 31.1668 27.6067 31.1602 27.5867L31.0535 27.3734C30.5202 26.3267 29.6868 25.4934 28.6402 24.9601L28.4268 24.8534C28.4268 24.8534 28.3468 24.8134 28.3468 24.7267C28.3468 24.6401 28.4068 24.6067 28.4268 24.6001L28.6402 24.4934C29.6868 23.9601 30.5202 23.1267 31.0535 22.0801L31.1602 21.8667C31.1602 21.8667 31.2002 21.7867 31.2868 21.7867C31.3735 21.7867 31.4068 21.8401 31.4135 21.8667L31.5202 22.0801C32.0535 23.1267 32.8868 23.9601 33.9335 24.4934L34.1468 24.6001C34.1468 24.6001 34.2268 24.6401 34.2268 24.7267C34.2268 24.8134 34.1668 24.8467 34.1468 24.8534Z" fill="#8646F4"/>
                                                </svg>
											</div>
										</div>
									</div>
								</div>
							<?php endif; ?>
						<?php endif; ?>
					</div>
				</div>



			</div>
		</div>
        <div class="row flex-row-reverse">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="card mb-5 border-0">
                    <div class="card-header d-inline border-0">
                        <div>
                            <h3 class="card-title fs-16 mt-3 mb-4"><i class="fa-solid fa-box-open mr-4 text-info"></i><?php echo e(__('Subscription')); ?></h3>
                        </div>
                        <?php if($user_subscription == ''): ?>
                            <div>
                                <h3 class="card-title fs-24 font-weight-800"><?php echo e(__('Free Trial')); ?></h3>
                            </div>
                            <div class="mb-1">
                                <span class="fs-12 text-muted"><?php echo e(__('No Subscription')); ?> / <?php echo config('payment.default_system_currency_symbol'); ?>0.00 <?php echo e(__('Per Month')); ?></span>
                            </div>
                        <?php else: ?>
                            <div>
                                <h3 class="card-title fs-24 font-weight-800"><?php if($user_subscription->payment_frequency == 'monthly'): ?> <?php echo e(__('Monthly Subscription')); ?> <?php elseif($user_subscription->payment_frequency == 'yearly'): ?> <?php echo e(__('Yearly Subscription')); ?> <?php else: ?> <?php echo e(__('Lifetime Subscription')); ?> <?php endif; ?></h3>
                            </div>
                            <div class="mb-1">
                                <span class="fs-12 text-muted"><?php echo e($user_subscription->plan_name); ?> <?php echo e(__('Plan')); ?> / <?php echo config('payment.default_system_currency_symbol'); ?><?php echo e($user_subscription->price); ?> <?php if($user_subscription->payment_frequency == 'monthly'): ?> <?php echo e(__('Per Month')); ?> <?php elseif($user_subscription->payment_frequency == 'yearly'): ?> <?php echo e(__('Per Year')); ?> <?php else: ?> <?php echo e(__('One Time Payment')); ?> <?php endif; ?></span>
                            </div>
                        <?php endif; ?>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <?php if($user_subscription == ''): ?>
                                <span class="fs-12 text-muted"><?php echo e(__('Total words available via subscription plan')); ?>: <?php if(auth()->user()->available_words == -1): ?> <?php echo e(__('Unlimited')); ?> <?php else: ?> <?php echo e(number_format(auth()->user()->available_words)); ?> <?php endif; ?>.</span> <span class="fs-12 text-muted"><?php echo e(__('Total prepaid words available ')); ?>: <?php echo e(number_format(auth()->user()->available_words_prepaid)); ?>. </span>
                            <?php else: ?>
                                <span class="fs-12 text-muted"><?php echo e(__('Total words available via subscription plan')); ?> <?php echo e(number_format(auth()->user()->available_words)); ?> <?php echo e(__('out of')); ?> <?php echo e(number_format(auth()->user()->total_words)); ?>. </span> <span class="fs-12 text-muted"><?php echo e(__('Total prepaid words available')); ?> <?php echo e(number_format(auth()->user()->available_words_prepaid)); ?>. </span>
                            <?php endif; ?>
                        </div>
                        <div class="progress mb-4">
                            <div class="progress-bar progress-bar-striped progress-bar-animated bg-warning subscription-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo e($progress['words']); ?>%"></div>
                        </div>
                        <?php if($subscription): ?>
                            <div class="mb-3">
                                <?php if($user_subscription->payment_frequency == 'lifetime'): ?>
                                    <span class="fs-12 text-muted"><?php echo e(__('Subscription renewal date')); ?>: <?php echo e(__('Never')); ?></span>
                                <?php else: ?>
                                    <span class="fs-12 text-muted"><?php echo e(__('Subscription renewal date')); ?>: <?php echo e($subscription->active_until); ?> </span>
                                <?php endif; ?>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-6 col-sm-6 border-0">
                <div class="card-body">
                    <h4 class="card-title mb-4 mt-1"><?php echo e(__('Personal Details')); ?></h4>
                    <div class="table-responsive">
                        <table class="table mb-0">
                            <tbody>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50"><?php echo e(__('Full Name')); ?> </span>
                                </td>
                                <td class="py-2 px-0"><?php echo e(auth()->user()->name); ?></td>
                            </tr>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50"><?php echo e(__('Email')); ?> </span>
                                </td>
                                <td class="py-2 px-0"><?php echo e(auth()->user()->email); ?></td>
                            </tr>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50"><?php echo e(__('Referral ID')); ?> </span>
                                </td>
                                <td class="py-2 px-0"><span class="referral-value"><?php echo e(auth()->user()->referral_id); ?></span> <a href="#" class="referral-edit-small" id="edit-referral"><?php echo e(__('Edit')); ?></a></td>
                            </tr>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50"><?php echo e(__('Referral Link')); ?> </span>
                                </td>
                                <td class="py-2 px-0"><?php echo e(config('app.url')); ?>/?ref=<span class="referral-value"><?php echo e(auth()->user()->referral_id); ?></span></td>
                            </tr>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50"><?php echo e(__('Job Role')); ?></span>
                                </td>
                                <td class="py-2 px-0"><?php echo e(auth()->user()->job_role); ?></td>
                            </tr>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50"><?php echo e(__('Company')); ?></span>
                                </td>
                                <td class="py-2 px-0"><?php echo e(auth()->user()->company); ?></td>
                            </tr>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50"><?php echo e(__('Website')); ?> </span>
                                </td>
                                <td class="py-2 px-0"><?php echo e(auth()->user()->website); ?></td>
                            </tr>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50"><?php echo e(__('City')); ?> </span>
                                </td>
                                <td class="py-2 px-0"><?php echo e(auth()->user()->city); ?></td>
                            </tr>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50"><?php echo e(__('Country')); ?> </span>
                                </td>
                                <td class="py-2 px-0"><?php echo e(auth()->user()->country); ?></td>
                            </tr>
                            <tr>
                                <td class="py-2 px-0">
                                    <span class="font-weight-semibold w-50"><?php echo e(__('Phone')); ?> </span>
                                </td>
                                <td class="py-2 px-0"><?php echo e(auth()->user()->phone_number); ?></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12" style="padding: 15px;">
            <div class="card border-0">
                <div class="card-header d-inline border-0">
                    <div>
                        <h3 class="card-title fs-16 mt-3 mb-4"><i class="fa-solid fa-scroll-old mr-4 text-info"></i><?php echo e(__('Words & Images Generated')); ?> <span class="text-muted">(<?php echo e(__('Current Year')); ?>)</span></h3>
                    </div>
                </div>
                <div class="card-body">
                    <div class="chartjs-wrapper-demo">
                        <canvas id="chart-user-usage" class="h-330"></canvas>
                    </div>
                </div>
            </div>
        </div>
	</div>
	<!-- END USER PROFILE PAGE -->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
	<!-- Chart JS -->
	<script src="<?php echo e(URL::asset('plugins/chart/chart.min.js')); ?>"></script>
	<script src="<?php echo e(URL::asset('plugins/sweetalert/sweetalert2.all.min.js')); ?>"></script>
	<script>
		$(function() {

			'use strict';

			let usageData = JSON.parse(`<?php echo $chart_data['word_usage']; ?>`);
			let usageDataset = Object.values(usageData);
			let usageData2 = JSON.parse(`<?php echo $chart_data['image_usage']; ?>`);
			let usageDataset2 = Object.values(usageData2);
			let delayed;

			let ctx = document.getElementById('chart-user-usage');
			new Chart(ctx, {
				type: 'bar',
				data: {
					labels: ['<?php echo e(__('Jan')); ?>', '<?php echo e(__('Feb')); ?>', '<?php echo e(__('Mar')); ?>', '<?php echo e(__('Apr')); ?>', '<?php echo e(__('May')); ?>', '<?php echo e(__('Jun')); ?>', '<?php echo e(__('Jul')); ?>', '<?php echo e(__('Aug')); ?>', '<?php echo e(__('Sep')); ?>', '<?php echo e(__('Oct')); ?>', '<?php echo e(__('Nov')); ?>', '<?php echo e(__('Dec')); ?>'],
					datasets: [{
						label: '<?php echo e(__('Images Created')); ?>',
						data: usageDataset2,
						backgroundColor: '#FF9D00',
						borderWidth: 1,
						borderRadius: 20,
						barPercentage: 0.5,
						fill: true
					},{
						label: '<?php echo e(__('Words Generated')); ?>',
						data: usageDataset,
						backgroundColor: '#007bff',
						borderWidth: 1,
						borderRadius: 20,
						barPercentage: 0.5,
						fill: true
					}]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false,
						labels: {
							display: false
						}
					},
					responsive: true,
					animation: {
						onComplete: () => {
							delayed = true;
						},
						delay: (context) => {
							let delay = 0;
							if (context.type === 'data' && context.mode === 'default' && !delayed) {
								delay = context.dataIndex * 50 + context.datasetIndex * 5;
							}
							return delay;
						},
					},
					scales: {
						y: {
							stacked: true,
							ticks: {
								beginAtZero: true,
								font: {
									size: 10
								},
								stepSize: 50000,
							},
							grid: {
								color: '#ebecf1',
								borderDash: [3, 2]
							}
						},
						x: {
							stacked: true,
							ticks: {
								font: {
									size: 10
								}
							},
							grid: {
								color: '#ebecf1',
								borderDash: [3, 2]
							}
						},
					},
					plugins: {
						tooltip: {
							cornerRadius: 10,
							xPadding: 10,
							yPadding: 10,
							backgroundColor: '#000000',
							titleColor: '#FF9D00',
							yAlign: 'bottom',
							xAlign: 'center',
						},
						legend: {
							position: 'bottom',
							labels: {
								boxWidth: 10,
								font: {
									size: 10
								}
							}
						}
					}

				}
			});


			// UPDATE DESCRIPTION
			$(document).on('click', '#edit-referral', function(e) {

				e.preventDefault();

				Swal.fire({
					title: '<?php echo e(__('Change Referral ID')); ?>',
					showCancelButton: true,
					confirmButtonText: '<?php echo e(__('Change')); ?>',
					reverseButtons: true,
					input: 'text',
				}).then((result) => {
					if (result.value) {
						var formData = new FormData();
						formData.append("value", result.value);
						$.ajax({
							headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },
							method: 'post',
							url: 'profile/change/referral',
							data: formData,
							processData: false,
							contentType: false,
							success: function (data) {
								if (data['status'] == 'success') {
									Swal.fire('<?php echo e(__('Referral ID Updated')); ?>', '<?php echo e(__('Referral ID has been successfully changed')); ?>', 'success');
									$('.referral-value').html(result.value);
								} else {
									Swal.fire('<?php echo e(__('Referral ID Update Error')); ?>', data['message'], 'warning');
								}
							},
							error: function(data) {
								Swal.fire('Update Error', data.responseJSON['error'], 'error');
							}
						})
					} else if (result.dismiss !== Swal.DismissReason.cancel) {
						Swal.fire('<?php echo e(__('No Referral ID Entered')); ?>', '<?php echo e(__('Make sure to provide a new referral ID before changing')); ?>', 'warning')
					}
				})
			});
		});
	</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\bestartup\resources\views/user/profile/index.blade.php ENDPATH**/ ?>