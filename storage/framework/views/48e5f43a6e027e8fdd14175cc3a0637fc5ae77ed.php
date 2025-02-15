

<?php $__env->startSection('page-header'); ?>
	<!-- PAGE HEADER -->
	<div class="page-header mt-5-7">
		<div class="page-leftheader">
			<h4 class="page-title mb-0"><?php echo e(__('BeStartup Settings')); ?></h4>
			<ol class="breadcrumb mb-2">
				<li class="breadcrumb-item"><a href="<?php echo e(route('admin.dashboard')); ?>"><i class="fa-solid fa-microchip-ai mr-2 fs-12"></i><?php echo e(__('Admin')); ?></a></li>
				<li class="breadcrumb-item" aria-current="page"><a href="<?php echo e(route('admin.davinci.dashboard')); ?>"> <?php echo e(__('BeStartup Management')); ?></a></li>
				<li class="breadcrumb-item active" aria-current="page"><a href="#"> <?php echo e(__('BeStartup Settings')); ?></a></li>
			</ol>
		</div>
	</div>
	<!-- END PAGE HEADER -->
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>					
	<div class="row justify-content-center">
		<div class="col-lg-10 col-md-12 col-xm-12">
			<div class="card border-0">
				<div class="card-header">
					<h3 class="card-title"><i class="fa-sharp fa-solid fa-sliders mr-2 text-primary"></i><?php echo e(__('Setup BeStartup Settings')); ?></h3>
				</div>
				<div class="card-body">
				
					<form action="<?php echo e(route('admin.davinci.configs.store')); ?>" method="POST" enctype="multipart/form-data">
						<?php echo csrf_field(); ?>

						<div class="row">							

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">	
									<h6><?php echo e(__('Default OpenAI Model')); ?> <span class="text-muted">(<?php echo e(__('For Admin Group')); ?>)</span><span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="default-model-admin" name="default-model-admin" class="form-select" data-placeholder="<?php echo e(__('Select Default Model')); ?>:">			
										<option value="gpt-3.5-turbo" <?php if( config('settings.default_model_admin')  == 'gpt-3.5-turbo'): ?> selected <?php endif; ?>><?php echo e(__('GPT 3.5 Turbo')); ?></option>
										<option value="gpt-3.5-turbo-16k" <?php if( config('settings.default_model_admin')  == 'gpt-3.5-turbo-16k'): ?> selected <?php endif; ?>><?php echo e(__('GPT 3.5 Turbo')); ?> (<?php echo e(__('16K')); ?>)</option>
										<option value="gpt-4" <?php if( config('settings.default_model_admin')  == 'gpt-4'): ?> selected <?php endif; ?>><?php echo e(__('GPT 4')); ?> (<?php echo e(__('8K')); ?>)</option>
										<option value="gpt-4-32k" <?php if( config('settings.default_model_admin')  == 'gpt-4-32k'): ?> selected <?php endif; ?>><?php echo e(__('GPT 4')); ?> (<?php echo e(__('32K')); ?>)</option>
										<option value="gpt-4-1106-preview" <?php if( config('settings.default_model_admin')  == 'gpt-4-1106-preview'): ?> selected <?php endif; ?>><?php echo e(__('GPT 4 Turbo')); ?> (<?php echo e(__('Preview')); ?>)</option>
										<option value="gpt-4-vision-preview" <?php if( config('settings.default_model_admin')  == 'gpt-4-vision-preview'): ?> selected <?php endif; ?>><?php echo e(__('GPT 4 Turbo with Vision')); ?> (<?php echo e(__('Preview')); ?>)</option>
										<?php $__currentLoopData = $models; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $model): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
											<option value="<?php echo e($model->model); ?>" <?php if( config('settings.default_model_admin')  == $model->model): ?> selected <?php endif; ?>><?php echo e($model->description); ?> (Fine Tune Model)</option>
										<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
									</select>
								</div>								
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">	
									<h6><?php echo e(__('Default Embedding Model')); ?> <span class="text-muted">(<?php echo e(__('For All Groups')); ?>)</span><span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="default-embedding-model" name="default-embedding-model" class="form-select">			
										<option value="text-embedding-ada-002" <?php if( config('settings.default_embedding_model')  == 'text-embedding-ada-002'): ?> selected <?php endif; ?>><?php echo e(__('Embedding V2 Ada')); ?></option>
										<option value="text-embedding-3-small" <?php if( config('settings.default_embedding_model')  == 'text-embedding-3-small'): ?> selected <?php endif; ?>><?php echo e(__('Embedding V3 Small')); ?></option>
										<option value="text-embedding-3-large" <?php if( config('settings.default_embedding_model')  == 'text-embedding-3-large'): ?> selected <?php endif; ?>><?php echo e(__('Embedding V3 Large')); ?></option>
									</select>
								</div>								
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">	
									<h6><?php echo e(__('Default Templates Result Language')); ?> <span class="text-muted">(<?php echo e(__('For New Registrations Only')); ?>)</span><span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
										  <select id="default-language" name="default-language" class="form-select" data-placeholder="<?php echo e(__('Select Default Template Language')); ?>:">	
											<?php $__currentLoopData = $languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
												<option value="<?php echo e($language->language_code); ?>" data-img="<?php echo e(URL::asset($language->language_flag)); ?>" <?php if(config('settings.default_language') == $language->language_code): ?> selected <?php endif; ?>> <?php echo e($language->language); ?></option>
											<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
									</select>
								</div>								
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('Tone of Voice Default State')); ?> <span class="text-muted">(<?php echo e(__('For All Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="tone" name="tone" class="form-select" data-placeholder="<?php echo e(__('Select tone of voice')); ?>">
										<option value="funny" <?php if(config('settings.tone_default_state') == 'funny'): ?> selected <?php endif; ?>><?php echo e(__('Funny')); ?></option>
										<option value="casual" <?php if(config('settings.tone_default_state') == 'casual'): ?> selected <?php endif; ?>> <?php echo e(__('Casual')); ?></option>																															
										<option value="excited" <?php if(config('settings.tone_default_state') == 'excited'): ?> selected <?php endif; ?>> <?php echo e(__('Excited')); ?></option>																															
										<option value="professional" <?php if(config('settings.tone_default_state') == 'professional'): ?> selected <?php endif; ?>> <?php echo e(__('Professional')); ?></option>																															
										<option value="witty" <?php if(config('settings.tone_default_state') == 'witty'): ?> selected <?php endif; ?>> <?php echo e(__('Witty')); ?></option>																															
										<option value="sarcastic" <?php if(config('settings.tone_default_state') == 'sarcastic'): ?> selected <?php endif; ?>> <?php echo e(__('Sarcastic')); ?></option>																															
										<option value="feminine" <?php if(config('settings.tone_default_state') == 'feminine'): ?> selected <?php endif; ?>> <?php echo e(__('Feminine')); ?></option>																															
										<option value="masculine" <?php if(config('settings.tone_default_state') == 'masculine'): ?> selected <?php endif; ?>> <?php echo e(__('Masculine')); ?></option>																															
										<option value="bold" <?php if(config('settings.tone_default_state') == 'bold'): ?> selected <?php endif; ?>> <?php echo e(__('Bold')); ?></option>																															
										<option value="dramatic" <?php if(config('settings.tone_default_state') == 'dramatic'): ?> selected <?php endif; ?>> <?php echo e(__('Dramatic')); ?></option>																															
										<option value="gumpy" <?php if(config('settings.tone_default_state') == 'gumpy'): ?> selected <?php endif; ?>> <?php echo e(__('Gumpy')); ?></option>																															
										<option value="secretive" <?php if(config('settings.tone_default_state') == 'secretive'): ?> selected <?php endif; ?>> <?php echo e(__('Secretive')); ?></option>																															
									</select>
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('Creativity Default State')); ?> <span class="text-muted">(<?php echo e(__('For All Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="creativity" name="creativity" class="form-select" data-placeholder="<?php echo e(__('Select creativity state')); ?>">
										<option value="low" <?php if(config('settings.creativity_default_state') == 'low'): ?> selected <?php endif; ?>><?php echo e(__('Low')); ?></option>
										<option value="average" <?php if(config('settings.creativity_default_state') == 'average'): ?> selected <?php endif; ?>> <?php echo e(__('Average')); ?></option>																															
										<option value="high" <?php if(config('settings.creativity_default_state') == 'high'): ?> selected <?php endif; ?>> <?php echo e(__('High')); ?></option>																																																													
									</select>
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('Templates Access')); ?> <span class="text-muted">(<?php echo e(__('For Admin Group')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="templates-admin" name="templates-admin" class="form-select" data-placeholder="<?php echo e(__('Set Templates Access')); ?>">
										<option value="all" <?php if(config('settings.templates_access_admin') == 'all'): ?> selected <?php endif; ?>><?php echo e(__('All Templates')); ?></option>
										<option value="free" <?php if(config('settings.templates_access_admin') == 'free'): ?> selected <?php endif; ?>><?php echo e(__('Only Free Templates')); ?></option>
										<option value="standard" <?php if(config('settings.templates_access_admin') == 'standard'): ?> selected <?php endif; ?>> <?php echo e(__('Up to Standard Templates')); ?></option>
										<option value="professional" <?php if(config('settings.templates_access_admin') == 'professional'): ?> selected <?php endif; ?>> <?php echo e(__('Up to Professional Templates')); ?></option>																																		
										<option value="premium" <?php if(config('settings.templates_access_admin') == 'premium'): ?> selected <?php endif; ?>> <?php echo e(__('Up to Premium Templates')); ?> (<?php echo e(__('All')); ?>)</option>																																																																																																									
									</select>
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">	
									<h6><?php echo e(__('Team Members Feature')); ?> <span class="text-muted">(<?php echo e(__('For All Groups')); ?>)</span></h6>
									<select id="team-members-feature" name="team-members-feature" class="form-select" data-placeholder="<?php echo e(__('Enable/Disable Team Members Feature')); ?>">			
										<option value="enable" <?php if( config('settings.team_members_feature')  == 'enable'): ?> selected <?php endif; ?>><?php echo e(__('Enable')); ?></option>
										<option value="disable" <?php if( config('settings.team_members_feature')  == 'disable'): ?> selected <?php endif; ?>><?php echo e(__('Disable')); ?></option>
									</select>
								</div> 						
							</div>							

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('AI Article Wizard Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="wizard-feature-user" name="wizard-feature-user" class="form-select">
										<option value='allow' <?php if(config('settings.wizard_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
										<option value='deny' <?php if(config('settings.wizard_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
									</select>
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('AI Article Wizard Image Feature')); ?> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="wizard-image-vendor" name="wizard-image-vendor" class="form-select">
										<option value='none' <?php if(config('settings.wizard_image_vendor') == 'none'): ?> selected <?php endif; ?>><?php echo e(__('Disable Image Generation for AI Article Wizard')); ?></option>
										<option value='dall-e-2' <?php if(config('settings.wizard_image_vendor') == 'dall-e-2'): ?> selected <?php endif; ?>> <?php echo e(__('Dalle 2')); ?></option>																															
										<option value='dall-e-3' <?php if(config('settings.wizard_image_vendor') == 'dall-e-3'): ?> selected <?php endif; ?>> <?php echo e(__('Dalle 3')); ?></option>																															
										<option value='dall-e-3-hd' <?php if(config('settings.wizard_image_vendor') == 'dall-e-3-hd'): ?> selected <?php endif; ?>> <?php echo e(__('Dalle 3 HD')); ?></option>																															
										<option value='stable-diffusion-v1-6' <?php if(config('settings.wizard_image_vendor') == 'stable-diffusion-v1-6'): ?> selected <?php endif; ?>> <?php echo e(__('Stable Diffusion v1.6')); ?></option>																															
										<option value='stable-diffusion-xl-1024-v1-0' <?php if(config('settings.wizard_image_vendor') == 'stable-diffusion-xl-1024-v1-0'): ?> selected <?php endif; ?>> <?php echo e(__('Stable Diffusion XL v1.0')); ?></option>																															
									</select>
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('AI Vision Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="vision-feature-user" name="vision-feature-user" class="form-select">
										<option value='allow' <?php if(config('settings.vision_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
										<option value='deny' <?php if(config('settings.vision_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
									</select>
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('AI Vision for AI Chats')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="vision-for-chat-user" name="vision-for-chat-user" class="form-select">
										<option value='allow' <?php if(config('settings.vision_for_chat_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
										<option value='deny' <?php if(config('settings.vision_for_chat_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
									</select>
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('AI Code Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="code-feature-user" name="code-feature-user" class="form-select" data-placeholder="<?php echo e(__('Set AI Code Creation Permission')); ?>">
										<option value='allow' <?php if(config('settings.code_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
										<option value='deny' <?php if(config('settings.code_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
									</select>
								</div>
							</div>	
							
							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">	
									<h6><?php echo e(__('Maximum Result Length')); ?> <span class="text-muted">(<?php echo e(__('In Words')); ?>) (<?php echo e(__('For Admin Group')); ?>)</span><span class="text-required"><i class="fa-solid fa-asterisk"></i></span><i class="ml-3 text-dark fs-13 fa-solid fa-circle-info" data-tippy-content="<?php echo e(__('OpenAI has a hard limit based on Token limits for each model. Refer to OpenAI documentation to learn more. As a recommended by OpenAI, max result length is capped at 1500 words.')); ?>"></i></h6>
									<input type="number" class="form-control <?php $__errorArgs = ['max-results-admin'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="max-results-admin" name="max-results-admin" placeholder="Ex: 10" value="<?php echo e(config('settings.max_results_limit_admin')); ?>" required>
									<?php $__errorArgs = ['max-results-admin'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
										<p class="text-danger"><?php echo e($errors->first('max-results-admin')); ?></p>
									<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
								</div>								
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('AI Chat PDF Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="chat-pdf-feature-user" name="chat-pdf-feature-user" class="form-select">
										<option value='allow' <?php if(config('settings.chat_pdf_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
										<option value='deny' <?php if(config('settings.chat_pdf_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
									</select>
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('AI Chat CSV Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="chat-csv-feature-user" name="chat-csv-feature-user" class="form-select">
										<option value='allow' <?php if(config('settings.chat_csv_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
										<option value='deny' <?php if(config('settings.chat_csv_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
									</select>
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('AI Web Chat Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="chat-web-feature-user" name="chat-web-feature-user" class="form-select">
										<option value='allow' <?php if(config('settings.chat_web_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
										<option value='deny' <?php if(config('settings.chat_web_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
									</select>
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('AI Chat Image Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="chat-image-feature-user" name="chat-image-feature-user" class="form-select">
										<option value='allow' <?php if(config('settings.chat_image_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
										<option value='deny' <?php if(config('settings.chat_image_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
									</select>
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('Smart Editor Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="smart-editor-feature-user" name="smart-editor-feature-user" class="form-select">
										<option value='allow' <?php if(config('settings.smart_editor_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
										<option value='deny' <?php if(config('settings.smart_editor_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
									</select>
								</div>
							</div>

							<div class="col-lg-6 col-md-6 col-sm-12">
								<div class="input-box">
									<h6><?php echo e(__('AI ReWriter Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
									<select id="rewriter-feature-user" name="rewriter-feature-user" class="form-select">
										<option value='allow' <?php if(config('settings.rewriter_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
										<option value='deny' <?php if(config('settings.rewriter_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
									</select>
								</div>
							</div>
						</div>


						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">

								<h6 class="fs-12 font-weight-bold mb-4"><i class="fa fa-gift text-info fs-14 mr-2"></i><?php echo e(__('Free Trial Options')); ?> <span class="text-muted">(<?php echo e(__('User Group Only')); ?>)</span></h6>

								<div class="row">			
									
									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">	
											<h6><?php echo e(__('Default OpenAI Model')); ?> <span class="text-muted">(<?php echo e(__('For User Group')); ?>)</span><span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="default-model-user" name="default-model-user" class="form-select" data-placeholder="<?php echo e(__('Select Default Model')); ?>:">			
												<option value="gpt-3.5-turbo" <?php if( config('settings.default_model_user')  == 'gpt-3.5-turbo'): ?> selected <?php endif; ?>><?php echo e(__('GPT 3.5 Turbo')); ?></option>
												<option value="gpt-3.5-turbo-16k" <?php if( config('settings.default_model_user')  == 'gpt-3.5-turbo-16k'): ?> selected <?php endif; ?>><?php echo e(__('GPT 3.5 Turbo')); ?> (<?php echo e(__('16K')); ?>)</option>
												<option value="gpt-4" <?php if( config('settings.default_model_user')  == 'gpt-4'): ?> selected <?php endif; ?>><?php echo e(__('GPT 4')); ?> (<?php echo e(__('8K')); ?>)</option>
												<option value="gpt-4-32k" <?php if( config('settings.default_model_user')  == 'gpt-4-32k'): ?> selected <?php endif; ?>><?php echo e(__('GPT 4')); ?> (<?php echo e(__('32K')); ?>)</option>												
												<option value="gpt-4-1106-preview" <?php if( config('settings.default_model_user')  == 'gpt-4-1106-preview'): ?> selected <?php endif; ?>><?php echo e(__('GPT 4 Turbo')); ?> (<?php echo e(__('Preview')); ?>)</option>
												<option value="gpt-4-vision-preview" <?php if( config('settings.default_model_user')  == 'gpt-4-vision-preview'): ?> selected <?php endif; ?>><?php echo e(__('GPT 4 Turbo with Vision')); ?> (<?php echo e(__('Preview')); ?>)</option>
												<?php $__currentLoopData = $models; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $model): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
													<option value="<?php echo e($model->model); ?>" <?php if( config('settings.default_model_user')  == $model->model): ?> selected <?php endif; ?>><?php echo e($model->description); ?> (Fine Tune Model)</option>
												<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
											</select>
										</div>								
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('Templates Access')); ?> <span class="text-muted">(<?php echo e(__('For User Group')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="templates-user" name="templates-user" class="form-select" data-placeholder="<?php echo e(__('Set Templates Access')); ?>">
												<option value="all" <?php if(config('settings.templates_access_user') == 'all'): ?> selected <?php endif; ?>><?php echo e(__('All Templates')); ?></option>	
												<option value="free" <?php if(config('settings.templates_access_user') == 'free'): ?> selected <?php endif; ?>><?php echo e(__('Only Free Templates')); ?></option>																																									
												<option value="standard" <?php if(config('settings.templates_access_user') == 'standard'): ?> selected <?php endif; ?>> <?php echo e(__('Up to Standard Templates')); ?></option>	
												<option value="professional" <?php if(config('settings.templates_access_user') == 'professional'): ?> selected <?php endif; ?>> <?php echo e(__('Up to Professional Templates')); ?></option>	
												<option value="premium" <?php if(config('settings.templates_access_user') == 'premium'): ?> selected <?php endif; ?>> <?php echo e(__('Up to Premium Templates')); ?> (<?php echo e(__('All')); ?>)</option>																																																													
											</select>
										</div>
									</div>				
									
									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI Chat Package Type Access')); ?> <span class="text-muted">(<?php echo e(__('For User Group')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="chats" name="chat-user" class="form-select" data-placeholder="<?php echo e(__('Set AI Chat Package Type Access')); ?>">
												<option value="all" <?php if(config('settings.chats_access_user') == 'all'): ?> selected <?php endif; ?>><?php echo e(__('All Chat Types')); ?></option>
												<option value="free" <?php if(config('settings.chats_access_user') == 'free'): ?> selected <?php endif; ?>><?php echo e(__('Only Free Chat Types')); ?></option>
												<option value="standard" <?php if(config('settings.chats_access_user') == 'standard'): ?> selected <?php endif; ?>> <?php echo e(__('Up to Standard Chat Types')); ?></option>
												<option value="professional" <?php if(config('settings.chats_access_user') == 'professional'): ?> selected <?php endif; ?>> <?php echo e(__('Up to Professional Chat Types')); ?></option>																																		
												<option value="premium" <?php if(config('settings.chats_access_user') == 'premium'): ?> selected <?php endif; ?>> <?php echo e(__('Up to Premium Chat Types')); ?></option>																																																																																																									
											</select>
										</div>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">	
											<h6><?php echo e(__('Team Members Quantity')); ?> <span class="text-muted">(<?php echo e(__('For User Group')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<input type="number" class="form-control <?php $__errorArgs = ['team-members-quantity'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="team-members-quantity" name="team-members-quantity" placeholder="Ex: 5" value="<?php echo e(config('settings.team_members_quantity_user')); ?>">
										</div> 						
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI Vision Feature Access')); ?> <span class="text-muted">(<?php echo e(__('For User Group')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="vision-user-access" name="vision-user-access" class="form-select">
												<option value='allow' <?php if(config('settings.vision_access_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.vision_access_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI Article Wizard Feature Access')); ?> <span class="text-muted">(<?php echo e(__('For User Group')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="wizard-user-access" name="wizard-user-access" class="form-select">
												<option value='allow' <?php if(config('settings.wizard_access_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.wizard_access_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI Chat PDF Feature Access')); ?> <span class="text-muted">(<?php echo e(__('For User Group')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="chat-pdf-user-access" name="chat-pdf-user-access" class="form-select">
												<option value='allow' <?php if(config('settings.chat_pdf_user_access') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.chat_pdf_user_access') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>
		
									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI Chat Image Feature Access')); ?> <span class="text-muted">(<?php echo e(__('For User Group')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="chat-image-user-access" name="chat-image-user-access" class="form-select">
												<option value='allow' <?php if(config('settings.chat_image_user_access') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.chat_image_user_access') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI Chat CSV Feature Access')); ?> <span class="text-muted">(<?php echo e(__('For User Group')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="chat-csv-user-access" name="chat-csv-user-access" class="form-select">
												<option value='allow' <?php if(config('settings.chat_csv_user_access') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.chat_csv_user_access') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI Web Chat Feature Access')); ?> <span class="text-muted">(<?php echo e(__('For User Group')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="chat-web-user-access" name="chat-web-user-access" class="form-select">
												<option value='allow' <?php if(config('settings.chat_web_user_access') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.chat_web_user_access') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('Smart Editor Feature Access')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="smart-editor-user-access" name="smart-editor-user-access" class="form-select">
												<option value='allow' <?php if(config('settings.smart_editor_user_access') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.smart_editor_user_access') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>
		
									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI ReWriter Feature Access')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="rewriter-user-access" name="rewriter-user-access" class="form-select">
												<option value='allow' <?php if(config('settings.rewriter_user_access') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.rewriter_user_access') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('Internet Real Time Data Access')); ?> <span class="text-muted">(<?php echo e(__('For User Group')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="internet-user-access" name="internet-user-access" class="form-select">
												<option value='allow' <?php if(config('settings.internet_user_access') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.internet_user_access') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">	
											<h6><?php echo e(__('Maximum Result Length')); ?> <span class="text-muted">(<?php echo e(__('In Words')); ?>)</span><span class="text-required"><i class="fa-solid fa-asterisk"></i></span><i class="ml-3 text-dark fs-13 fa-solid fa-circle-info" data-tippy-content="<?php echo e(__('OpenAI has a hard limit based on Token limits for each model. Refer to OpenAI documentation to learn more. As a recommended by OpenAI, max result length is capped at 1500 words.')); ?>"></i></h6>
											<input type="number" class="form-control <?php $__errorArgs = ['max-results-user'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="max-results-user" name="max-results-user" placeholder="Ex: 10" value="<?php echo e(config('settings.max_results_limit_user')); ?>" required>
											<?php $__errorArgs = ['max-results-user'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
												<p class="text-danger"><?php echo e($errors->first('max-results-user')); ?></p>
											<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
										</div>								
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">								
											<h6><?php echo e(__('Number of Words as a Gift upon Registration')); ?> <span class="text-muted">(<?php echo e(__('One Time')); ?>)<span class="text-required"><i class="fa-solid fa-asterisk"></i></span> </span></h6>
											<div class="form-group">							    
												<input type="number" class="form-control <?php $__errorArgs = ['free-tier-words'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="free-tier-words" name="free-tier-words" placeholder="Ex: 1000" value="<?php echo e(config('settings.free_tier_words')); ?>" required>
												<span class="text-muted fs-10"><?php echo e(__('Set as -1 for unlimited words')); ?>.</span>
												<?php $__errorArgs = ['free-tier-words'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('free-tier-words')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div>							
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">								
											<h6><?php echo e(__('Number of Images as a Gift upon Registration')); ?> <span class="text-muted">(<?php echo e(__('One Time')); ?>)<span class="text-required"><i class="fa-solid fa-asterisk"></i></span> </span></h6>
											<div class="form-group">							    
												<input type="number" class="form-control <?php $__errorArgs = ['free-tier-images'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="free-tier-images" name="free-tier-images" placeholder="Ex: 1000" value="<?php echo e(config('settings.free_tier_images')); ?>" required>
												<span class="text-muted fs-10"><?php echo e(__('Set as -1 for unlimited images')); ?>.</span>
												<?php $__errorArgs = ['free-tier-images'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('free-tier-images')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div>							
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">								
											<h6><?php echo e(__('Number of Characters for AI Voiceover as a Gift upon Registration')); ?> <span class="text-muted">(<?php echo e(__('One Time')); ?>)<span class="text-required"><i class="fa-solid fa-asterisk"></i></span> </span></h6>
											<div class="form-group">							    
												<input type="number" class="form-control <?php $__errorArgs = ['set-free-chars'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="set-free-chars" name="set-free-chars" placeholder="Ex: 1000" value="<?php echo e(config('settings.voiceover_welcome_chars')); ?>" required>
												<span class="text-muted fs-10"><?php echo e(__('Set as -1 for unlimited characters')); ?>.</span>
												<?php $__errorArgs = ['set-free-chars'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-free-chars')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div>							
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">								
											<h6><?php echo e(__('Number of Minutes for AI Speech to Text as a Gift upon Registration')); ?> <span class="text-muted">(<?php echo e(__('One Time')); ?>)<span class="text-required"><i class="fa-solid fa-asterisk"></i></span> </span></h6>
											<div class="form-group">							    
												<input type="number" class="form-control <?php $__errorArgs = ['set-free-minutes'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="set-free-minutes" name="set-free-minutes" placeholder="Ex: 1000" value="<?php echo e(config('settings.whisper_welcome_minutes')); ?>" required>
												<span class="text-muted fs-10"><?php echo e(__('Set as -1 for unlimited minutes')); ?>.</span>
												<?php $__errorArgs = ['set-free-minutes'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-free-minutes')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div>							
									</div>	
									
									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">	
											<h6><?php echo e(__('Maximum Allowed PDF File Size')); ?> <span class="text-muted">(<?php echo e(__('In MB')); ?>)</span><span class="text-required"><i class="fa-solid fa-asterisk"></i></span><i class="ml-3 text-dark fs-13 fa-solid fa-circle-info" data-tippy-content="<?php echo e(__('Set the maximum PDF file size limit for free tier user for AI Chat PDF feature')); ?>"></i></h6>
											<input type="number" class="form-control <?php $__errorArgs = ['max-pdf-size'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="max-pdf-size" name="max-pdf-size" placeholder="Ex: 10" min="1" value="<?php echo e(config('settings.chat_pdf_file_size_user')); ?>" required>
											<?php $__errorArgs = ['max-pdf-size'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
												<p class="text-danger"><?php echo e($errors->first('max-pdf-size')); ?></p>
											<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
										</div>								
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">	
											<h6><?php echo e(__('Maximum Allowed CSV File Size')); ?> <span class="text-muted">(<?php echo e(__('In MB')); ?>)</span><span class="text-required"><i class="fa-solid fa-asterisk"></i></span><i class="ml-3 text-dark fs-13 fa-solid fa-circle-info" data-tippy-content="<?php echo e(__('Set the maximum CSV file size limit for free tier user for AI Chat CSV feature')); ?>"></i></h6>
											<input type="number" class="form-control <?php $__errorArgs = ['max-csv-size'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="max-csv-size" name="max-csv-size" placeholder="Ex: 10" min="1" value="<?php echo e(config('settings.chat_csv_file_size_user')); ?>" required>
											<?php $__errorArgs = ['max-csv-size'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
												<p class="text-danger"><?php echo e($errors->first('max-csv-size')); ?></p>
											<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
										</div>								
									</div>
								</div>	
							</div>
						</div>


						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">

								<h6 class="fs-12 font-weight-bold mb-4"><i class="fa-sharp fa-solid fa-message-captions text-info fs-14 mr-2"></i><?php echo e(__('AI Chat Settings')); ?> <span class="text-muted">(<?php echo e(__('For All Groups')); ?>)</span></h6>

								<div class="row">

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI Chat Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="chat-feature-user" name="chat-feature-user" class="form-select" data-placeholder="<?php echo e(__('Set Chat Permission')); ?>">
												<option value='allow' <?php if(config('settings.chat_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.chat_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">	
											<h6><?php echo e(__('AI Chat Default Voice')); ?> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="chat-default-voice" name="chat-default-voice" class="form-select">			
												<option value="alloy" <?php if( config('settings.chat_default_voice')  == 'alloy'): ?> selected <?php endif; ?>><?php echo e(__('Alloy')); ?> (<?php echo e(__('Male')); ?>)</option>
												<option value="echo" <?php if( config('settings.chat_default_voice')  == 'echo'): ?> selected <?php endif; ?>><?php echo e(__('Echo')); ?> (<?php echo e(__('Male')); ?>)</option>
												<option value="fable" <?php if( config('settings.chat_default_voice')  == 'fable'): ?> selected <?php endif; ?>><?php echo e(__('Fable')); ?> (<?php echo e(__('Male')); ?>)</option>
												<option value="onyx" <?php if( config('settings.chat_default_voice')  == 'onyx'): ?> selected <?php endif; ?>><?php echo e(__('Onyx')); ?> (<?php echo e(__('Male')); ?>)</option>
												<option value="nova" <?php if( config('settings.chat_default_voice')  == 'nova'): ?> selected <?php endif; ?>><?php echo e(__('Nova')); ?> (<?php echo e(__('Female')); ?>)</option>
												<option value="shimmer" <?php if( config('settings.chat_default_voice')  == 'shimmer'): ?> selected <?php endif; ?>><?php echo e(__('Shimmer')); ?> (<?php echo e(__('Female')); ?>)</option>
											</select>
										</div>								
									</div>
		
									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">	
											<h6><?php echo e(__('AI Chat Real Time Data Feature')); ?> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="chat-real-time-data" name="chat-real-time-data" class="form-select">			
												<option value="allow" <?php if( config('settings.chat_real_time_data')  == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value="deny" <?php if( config('settings.chat_real_time_data')  == 'deny'): ?> selected <?php endif; ?>><?php echo e(__('Deny')); ?></option>
											</select>
										</div>								
									</div>

									<div class="col-md-6 col-sm-12">
										<div class="input-box mb-0">								
											<h6><?php echo e(__('Serper API Key')); ?> <span class="text-muted">(<?php echo e(__('Required for Real-Time Data')); ?>)</span></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-serper-api'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="set-serper-api" name="set-serper-api" value="<?php echo e(config('services.serper.key')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-serper-api'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-serper-api')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 												
										</div> 
									</div>
		
								</div>		
							</div>
						</div>


						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">

								<h6 class="fs-12 font-weight-bold mb-4"><i class="fa-sharp fa-solid fa-camera-viewfinder text-info fs-14 mr-2"></i><?php echo e(__('AI Image Settings')); ?> <span class="text-muted">(<?php echo e(__('For All Groups')); ?>)</span></h6>

								<div class="row">

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI Image Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="image-feature-user" name="image-feature-user" class="form-select" data-placeholder="<?php echo e(__('Set AI Image Creation Permission')); ?>">
												<option value='allow' <?php if(config('settings.image_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.image_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI Image Service Vendor')); ?> </h6>
											<select id="image-vendor" name="image-vendor" class="form-select" data-placeholder="<?php echo e(__('Set AI Image Service Vendor')); ?>">
												<option value='openai' <?php if(config('settings.image_vendor') == 'openai'): ?> selected <?php endif; ?>><?php echo e(__('OpenAI Dalle')); ?></option>
												<option value='stable_diffusion' <?php if(config('settings.image_vendor') == 'stable_diffusion'): ?> selected <?php endif; ?>> <?php echo e(__('Stable Diffusion')); ?></option>																															
												<option value='both' <?php if(config('settings.image_vendor') == 'both'): ?> selected <?php endif; ?>> <?php echo e(__('Both (OpenAI Dalle & Stable Diffusion)')); ?></option>																															
											</select>
										</div>
									</div>
		
									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">	
											<h6><?php echo e(__('Default Storage for AI Images')); ?> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="storage" name="default-storage" class="form-select" data-placeholder="<?php echo e(__('Set Default Storage for AI Images')); ?>:">			
												<option value="local" <?php if( config('settings.default_storage')  == 'local'): ?> selected <?php endif; ?>><?php echo e(__('Local Server')); ?></option>
												<option value="aws" <?php if( config('settings.default_storage')  == 'aws'): ?> selected <?php endif; ?>><?php echo e(__('Amazon Web Services')); ?></option>
												<option value="wasabi" <?php if( config('settings.default_storage')  == 'wasabi'): ?> selected <?php endif; ?>><?php echo e(__('Wasabi Cloud')); ?></option>
												<option value="gcp" <?php if( config('settings.default_storage')  == 'gcp'): ?> selected <?php endif; ?>><?php echo e(__('Google Cloud Platform')); ?></option>
												<option value="storj" <?php if( config('settings.default_storage')  == 'storj'): ?> selected <?php endif; ?>><?php echo e(__('Storj')); ?></option>
												<option value="dropbox" <?php if( config('settings.default_storage')  == 'dropbox'): ?> selected <?php endif; ?>><?php echo e(__('Dropbox')); ?></option>
											</select>
										</div>								
									</div>
		
									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">	
											<h6><?php echo e(__('Delete AI Image Results After')); ?> <span class="text-muted">(<?php echo e(__('In Days')); ?>) (<?php echo e(__('For All Groups')); ?>)</span><span class="text-required"><i class="fa-solid fa-asterisk"></i></span><i class="ml-3 text-dark fs-13 fa-solid fa-circle-info" data-tippy-content="<?php echo e(__('Default days after which generated AI Images will be deleted, use 0 for never delete. Subscribers can overwrite this baed on their subscription plans')); ?>"></i></h6>
											<input type="number" class="form-control <?php $__errorArgs = ['default-duration'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="default-duration" name="default-duration" value="<?php echo e(config('settings.default_duration')); ?>" required>
											<?php $__errorArgs = ['default-duration'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
												<p class="text-danger"><?php echo e($errors->first('default-duration')); ?></p>
											<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
										</div>								
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('Default OpenAI Dalle Engine')); ?> </h6>
											<select id="dalle-engine" name="dalle-engine" class="form-select">
												<option value='dall-e-2' <?php if(config('settings.image_dalle_engine') == 'dall-e-2'): ?> selected <?php endif; ?>><?php echo e(__('Dalle 2')); ?></option>
												<option value='dall-e-3' <?php if(config('settings.image_dalle_engine') == 'dall-e-3'): ?> selected <?php endif; ?>> <?php echo e(__('Dalle 3')); ?></option>																															
												<option value='dall-e-3-hd' <?php if(config('settings.image_dalle_engine') == 'dall-e-3-hd'): ?> selected <?php endif; ?>> <?php echo e(__('Dalle 3 HD')); ?></option>																															
											</select>
										</div>
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('Default Stable Diffusion Engine ID')); ?> </h6>
											<select id="stable-diffusion-engine" name="stable-diffusion-engine" class="form-select" data-placeholder="<?php echo e(__('Set Stable Diffusion Engine ID')); ?>">
												<option value='stable-diffusion-v1-6' <?php if(config('settings.image_stable_diffusion_engine') == 'stable-diffusion-v1-6'): ?> selected <?php endif; ?>><?php echo e(__('Stable Diffusion v1.6')); ?></option>
												<option value='stable-diffusion-xl-beta-v2-2-2' <?php if(config('settings.image_stable_diffusion_engine') == 'stable-diffusion-xl-beta-v2-2-2'): ?> selected <?php endif; ?>> <?php echo e(__('Stable Diffusion v2.2.2-XL Beta')); ?></option>																															
												<option value='stable-diffusion-xl-1024-v0-9' <?php if(config('settings.image_stable_diffusion_engine') == 'stable-diffusion-xl-1024-v0-9'): ?> selected <?php endif; ?>> <?php echo e(__('SDXL v0.9')); ?></option>																															
												<option value='stable-diffusion-xl-1024-v1-0' <?php if(config('settings.image_stable_diffusion_engine') == 'stable-diffusion-xl-1024-v1-0'): ?> selected <?php endif; ?>> <?php echo e(__('SDXL v1.0')); ?></option>																															
											</select>
										</div>
									</div>
		
								</div>		
							</div>
						</div>


						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">

								<h6 class="fs-12 font-weight-bold mb-4"><i class="fa-sharp fa-solid fa-waveform-lines text-info fs-14 mr-2"></i><?php echo e(__('AI Voiceover Settings')); ?> <span class="text-muted">(<?php echo e(__('For All Groups')); ?>)</span></h6>

								<div class="row">

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI Voiceover Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="voiceover-feature-user" name="voiceover-feature-user" class="form-select" data-placeholder="<?php echo e(__('Set AI Voiceover Permission')); ?>">
												<option value='allow' <?php if(config('settings.voiceover_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.voiceover_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>	

									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- EFFECTS -->
										<div class="input-box">	
											<h6><?php echo e(__('SSML Effects')); ?></h6>
											  <select id="set-ssml-effects" name="set-ssml-effects" class="form-select" data-placeholder="<?php echo e(__('Configure SSML Effects')); ?>">			
												<option value="enable" <?php if( config('settings.voiceover_ssml_effect')  == 'enable'): ?> selected <?php endif; ?>><?php echo e(__('Enable All')); ?></option>
												<option value="disable" <?php if( config('settings.voiceover_ssml_effect')  == 'disable'): ?> selected <?php endif; ?>><?php echo e(__('Disable All')); ?></option>
											</select>
										</div> <!-- END EFFECTS -->							
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- LANGUAGE -->
										<div class="input-box">	
											<h6><?php echo e(__('Default Language')); ?></h6>
											  <select id="languages" name="language" class="form-select" data-placeholder="<?php echo e(__('Select Default Language')); ?>" data-callback="language_select">			
												<?php $__currentLoopData = $voiceover_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
													<option value="<?php echo e($language->language_code); ?>" data-img="<?php echo e(URL::asset($language->language_flag)); ?>" <?php if(config('settings.voiceover_default_language') == $language->language_code): ?> selected <?php endif; ?>> <?php echo e($language->language); ?></option>
												<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
											</select>
										</div> <!-- END LANGUAGE -->							
									</div>
		
									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- VOICE -->
										<div class="input-box">	
											<h6><?php echo e(__('Default Voice')); ?></h6>
											  <select id="voices" name="voice" class="form-select" data-placeholder="<?php echo e(__('Select Default Voice')); ?>" data-callback="default_voice">			
												<?php $__currentLoopData = $voices; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $voice): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
													<option value="<?php echo e($voice->voice_id); ?>" 	
														data-img="<?php echo e(URL::asset($voice->avatar_url)); ?>"										
														data-id="<?php echo e($voice->voice_id); ?>" 
														data-lang="<?php echo e($voice->language_code); ?>" 
														data-type="<?php echo e($voice->voice_type); ?>"
														data-gender="<?php echo e($voice->gender); ?>"
														<?php if(config('settings.voiceover_default_voice') == $voice->voice_id): ?> selected <?php endif; ?>
														data-class="<?php if(config('settings.voiceover_default_language') !== $voice->language_code): ?> remove-voice <?php endif; ?>"> 
														<?php echo e($voice->voice); ?>  														
													</option>
												<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
											</select>
										</div> <!-- END VOICE -->							
									</div>
																	
									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- MAX CHARACTERS -->
										<div class="input-box">								
											<h6><?php echo e(__('Maximum Total Characters Synthesize Limit')); ?> <i class="ml-2 fa fa-info info-notification" data-tippy-content="<?php echo e(__('Maximum supported characters per single synthesize task can be up to 100000 characters. Each voice (textarea) has a limitation of up to 5000 characters, and you can combine up to 20 voices in a single task (20 voices x 5000 textarea limit = 100000)')); ?>."></i></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-max-chars'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="set-max-chars" name="set-max-chars" placeholder="Ex: 3000" value="<?php echo e(config('settings.voiceover_max_chars_limit')); ?>">
												<?php $__errorArgs = ['set-max-chars'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-max-chars')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END MAX CHARACTERS -->							
									</div>
		
									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">								
											<h6><?php echo e(__('Maximum Concurrent Voices Limit')); ?> <i class="ml-2 fa fa-info info-notification" data-tippy-content="<?php echo e(__('You can mix up to 20 different voices in a single synthesize task. Each voice can synthesize up to 5000 characters, total characters can not exceed the limit set by Maximum Characters Synthesize Limit field.')); ?>"></i></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-max-voices'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="set-max-voices" name="set-max-voices" placeholder="Ex: 5" value="<?php echo e(config('settings.voiceover_max_voice_limit')); ?>">
												<?php $__errorArgs = ['set-max-voices'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-max-voices')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div>							
									</div>	
									
									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- STORAGE OPTION -->
										<div class="input-box">	
											<h6><?php echo e(__('Default Storage for AI Voiceovers')); ?></h6>
											  <select id="set-storage-option" name="set-storage-option" class="form-select" data-placeholder="<?php echo e(__('Select Default Storage for AI Voiceover')); ?>">			
												<option value="local" <?php if( config('settings.voiceover_default_storage')  == 'local'): ?> selected <?php endif; ?>><?php echo e(__('Local Server Storage')); ?></option>
												<option value="aws" <?php if( config('settings.voiceover_default_storage')  == 'aws'): ?> selected <?php endif; ?>>Amazon Web Services</option>
												<option value="wasabi" <?php if( config('settings.voiceover_default_storage')  == 'wasabi'): ?> selected <?php endif; ?>>Wasabi Cloud</option>
												<option value="gcp" <?php if( config('settings.voiceover_default_storage')  == 'gcp'): ?> selected <?php endif; ?>><?php echo e(__('Google Cloud Platform')); ?></option>
												<option value="storj" <?php if( config('settings.voiceover_default_storage')  == 'storj'): ?> selected <?php endif; ?>><?php echo e(__('Storj')); ?></option>
												<option value="dropbox" <?php if( config('settings.voiceover_default_storage')  == 'dropbox'): ?> selected <?php endif; ?>><?php echo e(__('Dropbox')); ?></option>
											</select>
										</div> <!-- END STORAGE OPTION -->							
									</div>
		
									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- STORAGE OPTION -->
										<div class="input-box">	
											<h6><?php echo e(__('Delete AI Voiceover Result After')); ?> <span class="text-muted">(<?php echo e(__('In Days')); ?>) (<?php echo e(__('For All Groups')); ?>)</span><span class="text-required"><i class="fa-solid fa-asterisk"></i></span><i class="ml-3 text-dark fs-13 fa-solid fa-circle-info" data-tippy-content="<?php echo e(__('Default days after which generated AI Voiceovers will be deleted, use 0 for never delete. Subscribers can overwrite this baed on their subscription plans')); ?>"></i></h6>
											<input type="number" class="form-control <?php $__errorArgs = ['voiceover-default-duration'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="voiceover-default-duration" name="voiceover-default-duration" value="<?php echo e(config('settings.voiceover_default_duration')); ?>">
											<?php $__errorArgs = ['voiceover-default-duration'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
												<p class="text-danger"><?php echo e($errors->first('voiceover-default-duration')); ?></p>
											<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
										</div> <!-- END STORAGE OPTION -->							
									</div>
		
								</div>		
							</div>
						</div>


						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">

								<h6 class="fs-12 font-weight-bold mb-4"><i class="fa-sharp fa-solid fa-folder-music text-info fs-14 mr-2"></i><?php echo e(__('AI Speech to Text Settings')); ?> <span class="text-muted">(<?php echo e(__('For All Groups')); ?>)</span></h6>

								<div class="row">

									<div class="col-lg-6 col-md-6 col-sm-12">
										<div class="input-box">
											<h6><?php echo e(__('AI Speech to Text Feature')); ?> <span class="text-muted">(<?php echo e(__('For User & Subscriber Groups')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="whisper-feature-user" name="whisper-feature-user" class="form-select" data-placeholder="<?php echo e(__('Set AI Speech to Text Permission')); ?>">
												<option value='allow' <?php if(config('settings.whisper_feature_user') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
												<option value='deny' <?php if(config('settings.whisper_feature_user') == 'deny'): ?> selected <?php endif; ?>> <?php echo e(__('Deny')); ?></option>																															
											</select>
										</div>
									</div>
																	
									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- MAX CHARACTERS -->
										<div class="input-box">								
											<h6><?php echo e(__('Maximum Allowed Audio File Size')); ?> <i class="ml-2 fa fa-info info-notification" data-tippy-content="<?php echo e(__('OpenAI supports audio files only up to 25MB')); ?>."></i></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-max-audio-size'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="set-max-audio-size" name="set-max-audio-size" placeholder="Ex: 25" value="<?php echo e(config('settings.whisper_max_audio_size')); ?>">
												<?php $__errorArgs = ['set-max-audio-size'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-max-audio-size')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END MAX CHARACTERS -->							
									</div>
		
									
									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- STORAGE OPTION -->
										<div class="input-box">	
											<h6><?php echo e(__('Default Storage for AI Speech to Text')); ?></h6>
											  <select id="set-whisper-storage-option" name="set-whisper-storage-option" class="form-select" data-placeholder="<?php echo e(__('Select Default Storage for AI Speech to Text')); ?>">			
												<option value="local" <?php if( config('settings.whisper_default_storage')  == 'local'): ?> selected <?php endif; ?>><?php echo e(__('Local Server Storage')); ?></option>
												<option value="aws" <?php if( config('settings.whisper_default_storage')  == 'aws'): ?> selected <?php endif; ?>>Amazon Web Services</option>
												<option value="wasabi" <?php if( config('settings.whisper_default_storage')  == 'wasabi'): ?> selected <?php endif; ?>>Wasabi Cloud</option>
												<option value="gcp" <?php if( config('settings.whisper_default_storage')  == 'gcp'): ?> selected <?php endif; ?>><?php echo e(__('Google Cloud Platform')); ?></option>
												<option value="storj" <?php if( config('settings.whisper_default_storage')  == 'storj'): ?> selected <?php endif; ?>><?php echo e(__('Storj')); ?></option>
												<option value="dropbox" <?php if( config('settings.whisper_default_storage')  == 'dropbox'): ?> selected <?php endif; ?>><?php echo e(__('Dropbox')); ?></option>
											</select>
										</div> <!-- END STORAGE OPTION -->							
									</div>
		
									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- STORAGE OPTION -->
										<div class="input-box">	
											<h6><?php echo e(__('Delete AI Speech to Text Result After')); ?> <span class="text-muted">(<?php echo e(__('In Days')); ?>) (<?php echo e(__('For All Groups')); ?>)</span><span class="text-required"><i class="fa-solid fa-asterisk"></i></span><i class="ml-3 text-dark fs-13 fa-solid fa-circle-info" data-tippy-content="<?php echo e(__('Default days after which transcribed AI Speech to Text will be deleted, use 0 for never delete. Subscribers can overwrite this baed on their subscription plans')); ?>"></i></h6>
											<input type="number" class="form-control <?php $__errorArgs = ['whisper-default-duration'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="whisper-default-duration" name="whisper-default-duration" value="<?php echo e(config('settings.whisper_default_duration')); ?>">
											<?php $__errorArgs = ['whisper-default-duration'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
												<p class="text-danger"><?php echo e($errors->first('whisper-default-duration')); ?></p>
											<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
										</div> <!-- END STORAGE OPTION -->							
									</div>								
								</div>		
							</div>
						</div>


						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">

								<h6 class="fs-12 font-weight-bold mb-4"><i class="fa-sharp fa-solid fa-sliders text-info fs-14 mr-2"></i><?php echo e(__('Miscellaneous')); ?></h6>

								<div class="row">
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12">	
											<div class="input-box">	
												<h6><?php echo e(__('Sensitive Words Filter')); ?> <span class="text-muted">(<?php echo e(__('Comma Separated')); ?>)</span></h6>							
												<textarea class="form-control" name="words-filter" rows="6" id="words-filter"><?php echo e($settings->value); ?></textarea>	
											</div>											
										</div>
									</div>							
								</div>
	
							</div>
						</div>


						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">

								<h6 class="fs-12 font-weight-bold mb-4"><img src="<?php echo e(URL::asset('img/csp/openai-sm.png')); ?>" class="fw-2 mr-2" alt=""><?php echo e(__('OpenAI')); ?></h6>

								<div class="row">
									<div class="col-lg-12 col-md-6 col-sm-12">
										<div class="row">								
											<div class="col-md-6 col-sm-12">
												<div class="input-box mb-0">								
													<h6><?php echo e(__('OpenAI Secret Key')); ?> <span class="text-muted">(<?php echo e(__('Main API Key')); ?>)</span> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
													<div class="form-group">							    
														<input type="text" class="form-control <?php $__errorArgs = ['secret-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="secret-key" name="secret-key" value="<?php echo e(config('services.openai.key')); ?>" autocomplete="off">
														<?php $__errorArgs = ['secret-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
															<p class="text-danger"><?php echo e($errors->first('secret-key')); ?></p>
														<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
													</div> 												
												</div> 
											</div>

											<div class="col-md-6 col-sm-12">
												<div class="input-box">
													<h6><?php echo e(__('Personal OpenAI API Key')); ?> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span><i class="ml-3 text-dark fs-13 fa-solid fa-circle-info" data-tippy-content="<?php echo e(__('If enabled, all users will be required to include their Personal OpenAi API keys in their profile pages. You can also enable it via Subscription plans only.')); ?>"></i></h6>
													<select id="personal-openai-api" name="personal-openai-api" class="form-select">
														<option value="allow" <?php if(config('settings.personal_openai_api') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
														<option value="deny" <?php if(config('settings.personal_openai_api') == 'deny'): ?> selected <?php endif; ?>><?php echo e(__('Deny')); ?></option>																																																																																																								
													</select>
												</div>
											</div>				
											
											<div class="col-md-6 col-sm-12">
												<div class="input-box mb-0">								
													<h6><?php echo e(__('Openai API Key Usage Model')); ?> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
													<select id="openai-key-usage" name="openai-key-usage" class="form-select" data-placeholder="<?php echo e(__('Set API Key Usage Model')); ?>">
														<option value="main" <?php if(config('settings.openai_key_usage') == 'main'): ?> selected <?php endif; ?>><?php echo e(__('Only Main API Key')); ?></option>
														<option value="random" <?php if(config('settings.openai_key_usage') == 'random'): ?> selected <?php endif; ?>><?php echo e(__('Random API Key')); ?></option>																																																																																																									
													</select>
												</div> 
											</div>
										</div>
										<a href="<?php echo e(route('admin.davinci.configs.keys')); ?>" class="btn btn-primary mt-4 mr-4" style="padding-left: 25px; padding-right: 25px;"><?php echo e(__('Store additional OpenAI API Keys')); ?></a>
										<a href="<?php echo e(route('admin.davinci.configs.fine-tune')); ?>" class="btn btn-primary mt-4" style="width: 223px;"><?php echo e(__('Fine Tune Models')); ?></a>
									</div>							
								</div>

								<div class="row">
									<h6 class="fs-12 font-weight-bold mb-4 mt-4"><?php echo e(__('OpenAI Voiceover Settings')); ?></h6>

									<div class="col-md-6 col-sm-12">
										<div class="form-group">
											<label class="custom-switch">
												<input type="checkbox" name="enable-openai-std" class="custom-switch-input" <?php if( config('settings.enable.openai_std')  == 'on'): ?> checked <?php endif; ?>>
												<span class="custom-switch-indicator"></span>
												<span class="custom-switch-description"><?php echo e(__('Activate OpenAI Standard Voices')); ?></span>
											</label>
										</div>
									</div>	
									<div class="col-md-6 col-sm-12">
										<div class="form-group">
											<label class="custom-switch">
												<input type="checkbox" name="enable-openai-nrl" class="custom-switch-input" <?php if( config('settings.enable.openai_nrl')  == 'on'): ?> checked <?php endif; ?>>
												<span class="custom-switch-indicator"></span>
												<span class="custom-switch-description"><?php echo e(__('Activate OpenAI Neural Voices')); ?></span>
											</label>
										</div>
									</div>							
								</div>	
							</div>
						</div>		

						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">

								<h6 class="fs-12 font-weight-bold mb-4"><img src="<?php echo e(URL::asset('img/csp/stability-sm.png')); ?>" class="fw-2 mr-2" alt=""><?php echo e(__('Stable Diffusion')); ?></h6>

								<div class="row">
									<div class="col-lg-12 col-md-6 col-sm-12 no-gutters">
										<div class="row">							
											<div class="col-md-6 col-sm-12">
												<div class="input-box mb-0">								
													<h6><?php echo e(__('Stable Diffusion API Key')); ?> <span class="text-muted">(<?php echo e(__('Main API Key')); ?>)</span><span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
													<div class="form-group">							    
														<input type="text" class="form-control <?php $__errorArgs = ['stable-diffusion-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="stable-diffusion-key" name="stable-diffusion-key" value="<?php echo e(config('services.stable_diffusion.key')); ?>" autocomplete="off">
														<?php $__errorArgs = ['stable-diffusion-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
															<p class="text-danger"><?php echo e($errors->first('stable-diffusion-key')); ?></p>
														<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>												
													</div> 
												</div> 
											</div>

											<div class="col-md-6 col-sm-12">
												<div class="input-box">
													<h6><?php echo e(__('Personal Stable Diffusion API Key')); ?> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span><i class="ml-3 text-dark fs-13 fa-solid fa-circle-info" data-tippy-content="<?php echo e(__('If enabled, all users will be required to include their Personal Stable Diffusion API keys in their profile pages. You can also enable it via Subscription plans only.')); ?>"></i></h6>
													<select id="personal-sd-api" name="personal-sd-api" class="form-select">
														<option value="allow" <?php if(config('settings.personal_sd_api') == 'allow'): ?> selected <?php endif; ?>><?php echo e(__('Allow')); ?></option>
														<option value="deny" <?php if(config('settings.personal_sd_api') == 'deny'): ?> selected <?php endif; ?>><?php echo e(__('Deny')); ?></option>																																																																																																								
													</select>
												</div>
											</div>

											<div class="col-md-6 col-sm-12">
												<div class="input-box mb-0">								
													<h6><?php echo e(__('SD API Key Usage Model')); ?> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
													<select id="sd-key-usage" name="sd-key-usage" class="form-select" data-placeholder="<?php echo e(__('Set API Key Usage Model')); ?>">
														<option value="main" <?php if(config('settings.sd_key_usage') == 'main'): ?> selected <?php endif; ?>><?php echo e(__('Only Main API Key')); ?></option>
														<option value="random" <?php if(config('settings.sd_key_usage') == 'random'): ?> selected <?php endif; ?>><?php echo e(__('Random API Key')); ?></option>																																																																																																									
													</select>
												</div> 
											</div>
										</div>
										<a href="<?php echo e(route('admin.davinci.configs.keys')); ?>" class="btn btn-primary mt-4 mb-2" style="padding-left: 25px; padding-right: 25px; width: 223px;"><?php echo e(__('Store additional SD API Keys')); ?></a>
									</div>							
								</div>
	
							</div>
						</div>	

						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">

								<h6 class="fs-12 font-weight-bold mb-4"><img src="<?php echo e(URL::asset('img/csp/azure-sm.png')); ?>" class="fw-2 mr-2" alt=""><?php echo e(__('Azure Voiceover Settings')); ?></h6>

								<div class="form-group mb-3">
									<label class="custom-switch">
										<input type="checkbox" name="enable-azure" class="custom-switch-input" <?php if( config('settings.enable.azure')  == 'on'): ?> checked <?php endif; ?>>
										<span class="custom-switch-indicator"></span>
										<span class="custom-switch-description"><?php echo e(__('Activate Azure Voices')); ?></span>
									</label>
								</div>

								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-12">								
										<!-- ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('Azure Key')); ?></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-azure-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="set-azure-key" name="set-azure-key" value="<?php echo e(config('services.azure.key')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-azure-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-azure-key')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END ACCESS KEY -->
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- AZURE REGION -->
										<div class="input-box">	
											<h6><?php echo e(__('Azure Region')); ?></h6>
											  <select id="set-azure-region" name="set-azure-region" class="form-select" data-placeholder="Select Azure Region:">			
												<option value="australiaeast" <?php if( config('services.azure.region')  == 'australiaeast'): ?> selected <?php endif; ?>>Australia East (australiaeast)</option>
												<option value="brazilsouth" <?php if( config('services.azure.region')  == 'brazilsouth'): ?> selected <?php endif; ?>>Brazil South (brazilsouth)</option>
												<option value="canadacentral" <?php if( config('services.azure.region')  == 'canadacentral'): ?> selected <?php endif; ?>>Canada Central (canadacentral)</option>
												<option value="centralus" <?php if( config('services.azure.region')  == 'centralus'): ?> selected <?php endif; ?>>Central US (centralus)</option>
												<option value="eastasia" <?php if( config('services.azure.region')  == 'eastasia'): ?> selected <?php endif; ?>>East Asia (eastasia)</option>
												<option value="eastus" <?php if( config('services.azure.region')  == 'eastus'): ?> selected <?php endif; ?>>East US (eastus)</option>
												<option value="eastus2" <?php if( config('services.azure.region')  == 'eastus2'): ?> selected <?php endif; ?>>East US 2 (eastus2)</option>
												<option value="francecentral" <?php if( config('services.azure.region')  == 'francecentral'): ?> selected <?php endif; ?>>France Central (francecentral)</option>
												<option value="centralindia" <?php if( config('services.azure.region')  == 'centralindia'): ?> selected <?php endif; ?>>India Central (centralindia)</option>
												<option value="japaneast" <?php if( config('services.azure.region')  == 'japaneast'): ?> selected <?php endif; ?>>Japan East (japaneast)</option>
												<option value="japanwest" <?php if( config('services.azure.region')  == 'japanwest'): ?> selected <?php endif; ?>>Japan West (japanwest)</option>
												<option value="koreacentral" <?php if( config('services.azure.region')  == 'koreacentral'): ?> selected <?php endif; ?>>Korea Central (koreacentral)</option>
												<option value="northcentralus" <?php if( config('services.azure.region')  == 'northcentralus'): ?> selected <?php endif; ?>>North Central US (northcentralus)</option>
												<option value="northeurope" <?php if( config('services.azure.region')  == 'northeurope'): ?> selected <?php endif; ?>>North Europe (northeurope)</option>
												<option value="southcentralus" <?php if( config('services.azure.region')  == 'southcentralus'): ?> selected <?php endif; ?>>South Central US (southcentralus)</option>
												<option value="southeastasia" <?php if( config('services.azure.region')  == 'southeastasia'): ?> selected <?php endif; ?>>Southeast Asia (southeastasia)</option>
												<option value="uksouth" <?php if( config('services.azure.region')  == 'uksouth'): ?> selected <?php endif; ?>>UK South (uksouth)</option>
												<option value="westcentralus" <?php if( config('services.azure.region')  == 'westcentralus'): ?> selected <?php endif; ?>>West Central US (westcentralus)</option>
												<option value="westeurope" <?php if( config('services.azure.region')  == 'westeurope'): ?> selected <?php endif; ?>>West Europe (westeurope)</option>
												<option value="westus" <?php if( config('services.azure.region')  == 'westus'): ?> selected <?php endif; ?>>West US (westus)</option>
												<option value="westus2" <?php if( config('services.azure.region')  == 'westus2'): ?> selected <?php endif; ?>>West US 2 (westus2)</option>
											</select>
										</div> <!-- END AZURE REGION -->									
									</div>

								</div>
	
							</div>
						</div>

						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">

								<h6 class="fs-12 font-weight-bold mb-4"><img src="<?php echo e(URL::asset('img/csp/elevenlabs-sm.png')); ?>" class="fw-2 mr-2" alt=""><?php echo e(__('ElevenLabs Voiceover Settings')); ?></h6>

								<div class="form-group mb-3">
									<label class="custom-switch">
										<input type="checkbox" name="enable-elevenlabs" class="custom-switch-input" <?php if( config('settings.enable.elevenlabs')  == 'on'): ?> checked <?php endif; ?>>
										<span class="custom-switch-indicator"></span>
										<span class="custom-switch-description"><?php echo e(__('Activate ElevenLabs Voices')); ?></span>
									</label>
								</div>

								<div class="row">
									<div class="col-sm-12">								
										<!-- ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('ElevenLabs API Key')); ?></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-elevenlabs-api'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="set-elevenlabs-api" name="set-elevenlabs-api" value="<?php echo e(config('services.elevenlabs.key')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-elevenlabs-api'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-elevenlabs-api')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END ACCESS KEY -->
									</div>								
								</div>
	
							</div>
						</div>	

						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">

								<h6 class="fs-12 font-weight-bold mb-4"><img src="<?php echo e(URL::asset('img/csp/gcp-sm.png')); ?>" class="fw-2 mr-2" alt=""><?php echo e(__('GCP Voiceover Settings')); ?></h6>

								<div class="form-group mb-3">
									<label class="custom-switch">
										<input type="checkbox" name="enable-gcp" class="custom-switch-input" <?php if( config('settings.enable.gcp')  == 'on'): ?> checked <?php endif; ?>>
										<span class="custom-switch-indicator"></span>
										<span class="custom-switch-description"><?php echo e(__('Activate GCP Voices')); ?></span>
									</label>
								</div>

								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-12">								
										<!-- ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('GCP Configuration File Path')); ?> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['gcp-configuration-path'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="gcp-configuration-path" name="gcp-configuration-path" value="<?php echo e(config('services.gcp.key_path')); ?>" autocomplete="off">
												<?php $__errorArgs = ['gcp-configuration-path'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('gcp-configuration-path')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END ACCESS KEY -->
									</div>	
									<div class="col-lg-6 col-md-6 col-sm-12">								
										<div class="input-box">								
											<h6>GCP Storage Bucket Name <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['gcp-bucket'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="gcp-bucket" name="gcp-bucket" value="<?php echo e(config('services.gcp.bucket')); ?>" autocomplete="off">
												<?php $__errorArgs = ['gcp-bucket'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('gcp-bucket')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> 
									</div>							
								</div>
	
							</div>
						</div>	

						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">
								<h6 class="fs-12 font-weight-bold mb-4"><img src="<?php echo e(URL::asset('img/csp/aws-sm.png')); ?>" class="fw-2 mr-2" alt=""><?php echo e(__('Amazon Web Services')); ?></h6>

								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-12">								
										<!-- ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('AWS Access Key')); ?>  <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-aws-access-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="aws-access-key" name="set-aws-access-key" value="<?php echo e(config('services.aws.key')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-aws-access-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-aws-access-key')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END ACCESS KEY -->
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- SECRET ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('AWS Secret Access Key')); ?>  <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6> 
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-aws-secret-access-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="aws-secret-access-key" name="set-aws-secret-access-key" value="<?php echo e(config('services.aws.secret')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-aws-secret-access-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-aws-secret-access-key')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END SECRET ACCESS KEY -->
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">								
										<!-- ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('Amazon S3 Bucket Name')); ?>  <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-aws-bucket'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="aws-bucket" name="set-aws-bucket" value="<?php echo e(config('services.aws.bucket')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-aws-bucket'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-aws-bucket')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END ACCESS KEY -->
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- AWS REGION -->
										<div class="input-box">	
											<h6><?php echo e(__('Set AWS Region')); ?>  <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<select id="set-aws-region" name="set-aws-region" class="form-select" data-placeholder="Select Default AWS Region:">			
												<option value="us-east-1" <?php if( config('services.aws.region')  == 'us-east-1'): ?> selected <?php endif; ?>><?php echo e(__('US East (N. Virginia) us-east-1')); ?></option>
												<option value="us-east-2" <?php if( config('services.aws.region')  == 'us-east-2'): ?> selected <?php endif; ?>><?php echo e(__('US East (Ohio) us-east-2')); ?></option>
												<option value="us-west-1" <?php if( config('services.aws.region')  == 'us-west-1'): ?> selected <?php endif; ?>><?php echo e(__('US West (N. California) us-west-1')); ?></option>
												<option value="us-west-2" <?php if( config('services.aws.region')  == 'us-west-2'): ?> selected <?php endif; ?>><?php echo e(__('US West (Oregon) us-west-2')); ?></option>
												<option value="ap-east-1" <?php if( config('services.aws.region')  == 'ap-east-1'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific (Hong Kong) ap-east-1')); ?></option>
												<option value="ap-south-1" <?php if( config('services.aws.region')  == 'ap-south-1'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific (Mumbai) ap-south-1')); ?></option>
												<option value="ap-northeast-3" <?php if( config('services.aws.region')  == 'ap-northeast-3'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific (Osaka) ap-northeast-3')); ?></option>
												<option value="ap-northeast-2" <?php if( config('services.aws.region')  == 'ap-northeast-2'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific (Seoul) ap-northeast-2')); ?></option>
												<option value="ap-southeast-1" <?php if( config('services.aws.region')  == 'ap-southeast-1'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific (Singapore) ap-southeast-1')); ?></option>
												<option value="ap-southeast-2" <?php if( config('services.aws.region')  == 'ap-southeast-2'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific (Sydney) ap-southeast-2')); ?></option>
												<option value="ap-northeast-1" <?php if( config('services.aws.region')  == 'ap-northeast-1'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific (Tokyo) ap-northeast-1')); ?></option>
												<option value="ap-northeast-1" <?php if( config('services.aws.region')  == 'ap-south-2'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific (Hyderabad) ap-south-2')); ?></option>
												<option value="ap-northeast-1" <?php if( config('services.aws.region')  == 'ap-southeast-3'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific (Jakarta) ap-southeast-3')); ?></option>
												<option value="eu-central-1" <?php if( config('services.aws.region')  == 'eu-central-1'): ?> selected <?php endif; ?>><?php echo e(__('Europe (Frankfurt) eu-central-1')); ?></option>
												<option value="eu-central-1" <?php if( config('services.aws.region')  == 'eu-central-2'): ?> selected <?php endif; ?>><?php echo e(__('Europe (Zurich) eu-central-2')); ?></option>
												<option value="eu-west-1" <?php if( config('services.aws.region')  == 'eu-west-1'): ?> selected <?php endif; ?>><?php echo e(__('Europe (Ireland) eu-west-1')); ?></option>
												<option value="eu-west-2" <?php if( config('services.aws.region')  == 'eu-west-2'): ?> selected <?php endif; ?>><?php echo e(__('Europe (London) eu-west-2')); ?></option>
												<option value="eu-south-1" <?php if( config('services.aws.region')  == 'eu-south-1'): ?> selected <?php endif; ?>><?php echo e(__('Europe (Milan) eu-south-1')); ?></option>
												<option value="eu-south-1" <?php if( config('services.aws.region')  == 'eu-south-1'): ?> selected <?php endif; ?>><?php echo e(__('Europe (Spain) eu-south-2')); ?></option>
												<option value="eu-west-3" <?php if( config('services.aws.region')  == 'eu-west-3'): ?> selected <?php endif; ?>><?php echo e(__('Europe (Paris) eu-west-3')); ?></option>
												<option value="eu-north-1" <?php if( config('services.aws.region')  == 'eu-north-1'): ?> selected <?php endif; ?>><?php echo e(__('Europe (Stockholm) eu-north-1')); ?></option>
												<option value="me-south-1" <?php if( config('services.aws.region')  == 'me-south-1'): ?> selected <?php endif; ?>><?php echo e(__('Middle East (Bahrain) me-south-1')); ?></option>
												<option value="me-south-1" <?php if( config('services.aws.region')  == 'me-central-1'): ?> selected <?php endif; ?>><?php echo e(__('Middle East (UAE) me-central-1')); ?></option>
												<option value="sa-east-1" <?php if( config('services.aws.region')  == 'sa-east-1'): ?> selected <?php endif; ?>><?php echo e(__('South America (São Paulo) sa-east-1')); ?></option>
												<option value="ca-central-1" <?php if( config('services.aws.region')  == 'ca-central-1'): ?> selected <?php endif; ?>><?php echo e(__('Canada (Central) ca-central-1')); ?></option>
												<option value="af-south-1" <?php if( config('services.aws.region')  == 'af-south-1'): ?> selected <?php endif; ?>><?php echo e(__('Africa (Cape Town) af-south-1')); ?></option>
											</select>
										</div> <!-- END AWS REGION -->									
									</div>									
		
								</div>
	
							</div>
						</div>	

						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">
								<h6 class="fs-12 font-weight-bold mb-4"><img src="<?php echo e(URL::asset('img/csp/storj-ssm.png')); ?>" class="fw-2 mr-2" alt=""><?php echo e(__('Storj Cloud')); ?></h6>

								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-12">								
										<!-- ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('Storj Access Key')); ?>  <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-storj-access-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="storj-access-key" name="set-storj-access-key" value="<?php echo e(config('services.storj.key')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-storj-access-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-storj-access-key')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END ACCESS KEY -->
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- SECRET ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('Storj Secret Access Key')); ?>  <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6> 
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-storj-secret-access-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="storj-secret-access-key" name="set-storj-secret-access-key" value="<?php echo e(config('services.storj.secret')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-storj-secret-access-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-storj-secret-access-key')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END SECRET ACCESS KEY -->
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">								
										<!-- ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('Storj Bucket Name')); ?>  <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-storj-bucket'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="storj-bucket" name="set-storj-bucket" value="<?php echo e(config('services.storj.bucket')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-storj-bucket'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-storj-bucket')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END ACCESS KEY -->
									</div>									
		
								</div>
	
							</div>
						</div>

						<div class="card border-0 special-shadow mb-7">							
							<div class="card-body">
								<h6 class="fs-12 font-weight-bold mb-4"><img src="<?php echo e(URL::asset('img/csp/dropbox-ssm.png')); ?>" class="fw-2 mr-2" alt=""><?php echo e(__('Dropbox')); ?></h6>

								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-12">								
										<!-- ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('Dropbox App Key')); ?>  <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-dropbox-app-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="dropbox-app-key" name="set-dropbox-app-key" value="<?php echo e(config('services.dropbox.key')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-dropbox-app-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-dropbox-app-key')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END ACCESS KEY -->
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- SECRET ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('Dropbox Secret Key')); ?>  <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6> 
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-dropbox-secret-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="dropbox-secret-key" name="set-dropbox-secret-key" value="<?php echo e(config('services.dropbox.secret')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-dropbox-secret-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-dropbox-secret-key')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END SECRET ACCESS KEY -->
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">								
										<!-- ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('Dropbox Access Token')); ?>  <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-dropbox-access-token'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="dropbox-access-token" name="set-dropbox-access-token" value="<?php echo e(config('services.dropbox.token')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-dropbox-access-token'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-dropbox-access-token')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END ACCESS KEY -->
									</div>									
		
								</div>
	
							</div>
						</div>	

						<div class="card border-0 special-shadow">							
							<div class="card-body">
								<h6 class="fs-12 font-weight-bold mb-4"><img src="<?php echo e(URL::asset('img/csp/wasabi-sm.png')); ?>" class="fw-2 mr-2" alt=""><?php echo e(__('Wasabi Cloud Storage')); ?></h6>

								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-12">								
										<!-- ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('Wasabi Access Key')); ?> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-wasabi-access-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="wasabi-access-key" name="set-wasabi-access-key" value="<?php echo e(config('services.wasabi.key')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-wasabi-access-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-wasabi-access-key')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END ACCESS KEY -->
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- SECRET ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('Wasabi Secret Access Key')); ?> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6> 
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-wasabi-secret-access-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="wasabi-secret-access-key" name="set-wasabi-secret-access-key" value="<?php echo e(config('services.wasabi.secret')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-wasabi-secret-access-key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-wasabi-secret-access-key')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END SECRET ACCESS KEY -->
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">								
										<!-- ACCESS KEY -->
										<div class="input-box">								
											<h6><?php echo e(__('Wasabi Bucket Name')); ?> <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											<div class="form-group">							    
												<input type="text" class="form-control <?php $__errorArgs = ['set-wasabi-bucket'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-danger <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="wasabi-bucket" name="set-wasabi-bucket" value="<?php echo e(config('services.wasabi.bucket')); ?>" autocomplete="off">
												<?php $__errorArgs = ['set-wasabi-bucket'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
													<p class="text-danger"><?php echo e($errors->first('set-wasabi-bucket')); ?></p>
												<?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
											</div> 
										</div> <!-- END ACCESS KEY -->
									</div>

									<div class="col-lg-6 col-md-6 col-sm-12">
										<!-- AWS REGION -->
										<div class="input-box">	
											<h6><?php echo e(__('Set Wasabi Region')); ?>  <span class="text-required"><i class="fa-solid fa-asterisk"></i></span></h6>
											  <select id="set-wasabi-region" name="set-wasabi-region" class="form-select" data-placeholder="Select Default Wasabi Region:">			
												<option value="us-west-1" <?php if( config('services.wasabi.region')  == 'us-west-1'): ?> selected <?php endif; ?>><?php echo e(__('US Oregon us-west-1')); ?></option>
												<option value="us-central-1" <?php if( config('services.wasabi.region')  == 'us-central-1'): ?> selected <?php endif; ?>><?php echo e(__('US Texas us-central-1')); ?></option>
												<option value="us-east-1" <?php if( config('services.wasabi.region')  == 'us-east-1'): ?> selected <?php endif; ?>><?php echo e(__('US N.Virginia us-east-1')); ?></option>
												<option value="us-east-2" <?php if( config('services.wasabi.region')  == 'us-east-2'): ?> selected <?php endif; ?>><?php echo e(__('US N.Virginia us-east-2')); ?></option>
												<option value="ap-northeast-1" <?php if( config('services.wasabi.region')  == 'ap-northeast-1'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific Tokyo ap-northeast-1')); ?></option>
												<option value="ap-northeast-2" <?php if( config('services.wasabi.region')  == 'ap-northeast-2'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific Osaka ap-northeast-2')); ?></option>
												<option value="ap-sotheast-1" <?php if( config('services.wasabi.region')  == 'ap-sotheast-1'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific Singapore ap-sotheast-1')); ?></option>
												<option value="ap-southeast-2" <?php if( config('services.wasabi.region')  == 'ap-southeast-2'): ?> selected <?php endif; ?>><?php echo e(__('Asia Pacific Sydney ap-southeast-2')); ?></option>
												<option value="ca-central-1" <?php if( config('services.wasabi.region')  == 'ca-central-1'): ?> selected <?php endif; ?>><?php echo e(__('Canada Toronto ca-central-1')); ?></option>
												<option value="eu-central-1" <?php if( config('services.wasabi.region')  == 'eu-central-1'): ?> selected <?php endif; ?>><?php echo e(__('Europe Amsterdam eu-central-1')); ?></option>
												<option value="eu-central-2" <?php if( config('services.wasabi.region')  == 'eu-central-2'): ?> selected <?php endif; ?>><?php echo e(__('Europe Frankfurt eu-central-2')); ?></option>
												<option value="eu-west-1" <?php if( config('services.wasabi.region')  == 'eu-west-1'): ?> selected <?php endif; ?>><?php echo e(__('Europe London eu-west-1')); ?></option>
												<option value="eu-west-2" <?php if( config('services.wasabi.region')  == 'eu-west-2'): ?> selected <?php endif; ?>><?php echo e(__('Europe Paris eu-west-2')); ?></option>
											</select>
										</div> <!-- END AWS REGION -->									
									</div>								
		
								</div>
	
							</div>
						</div>

						<!-- SAVE CHANGES ACTION BUTTON -->
						<div class="border-0 text-center mb-2 mt-1">
							<a href="<?php echo e(route('admin.davinci.dashboard')); ?>" class="btn btn-cancel mr-2"><?php echo e(__('Cancel')); ?></a>
							<button type="submit" class="btn btn-primary"><?php echo e(__('Save')); ?></button>							
						</div>				

					</form>
				</div>
			</div>
		</div>
	</div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
	<script src="<?php echo e(URL::asset('js/admin-config.js')); ?>"></script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u312848366/domains/bestartup.ai/public_html/resources/views/admin/davinci/configuration/index.blade.php ENDPATH**/ ?>