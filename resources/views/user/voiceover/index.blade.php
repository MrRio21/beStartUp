@extends('layouts.app')
@section('css')
	<!-- Data Table CSS -->
	<link href="{{URL::asset('plugins/datatable/datatables.min.css')}}" rel="stylesheet" />
	<!-- Green Audio Players CSS -->
	<link href="{{ URL::asset('plugins/audio-player/green-audio-player.css') }}" rel="stylesheet" />
	<!-- Sweet Alert CSS -->
	<link href="{{URL::asset('plugins/sweetalert/sweetalert2.min.css')}}" rel="stylesheet" />
@endsection

@section('content')
	<div class="row mt-24">
		<div class="col-lg-12 col-md-12 col-xm-12">
			<div class="card border-0" style="background: #E0E5F2;">
				<div class="card-header pt-4 border-0" id="voiceover-character-counter-top" style="background: #E0E5F2;">
					<h3 class="card-title"><i class="fa-sharp fa-solid fa-waveform-lines mr-4 text-info"></i><?php echo e(__('AI Voiceover Studio')); ?> </h3>
					<span class="fs-11 text-muted pl-3" id="voiceover-character-counter"><i class="fa-sharp fa-solid fa-bolt-lightning mr-2 text-primary"></i></span>
				</div>
				<div class="card-body pt-2 pl-7 pr-7 pb-4" id="tts-body-minify" style="background: #E0E5F2;">

						<form id="synthesize-text-form" class="d-flex justify-content-between flex-wrap" action="<?php echo e(route('user.voiceover.synthesize')); ?>" listen="<?php echo e(route('user.voiceover.listen')); ?>" method="POST" enctype="multipart/form-data">
							<?php echo csrf_field(); ?>

							<div class="row justify-content-around   col-lg-5 h-100" style="    background: white;
    padding: 36px;
    border: 0 solid;
    border-radius: 20px;" id="tts-awselect">
								<div class="col-md-12 col-sm-12  mb-4">
									<div class="form-group">
										<select id="languages" name="language" class="form-select" data-placeholder="<?php echo e(__('Pick Your Language')); ?>:" data-callback="language_select">
											<?php $__currentLoopData = $languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
												<option value="<?php echo e($language->language_code); ?>" data-img="<?php echo e(URL::asset($language->language_flag)); ?>" <?php if(auth()->user()->default_voiceover_language == $language->language_code): ?> selected <?php endif; ?>> <?php echo e($language->language); ?></option>
											<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
										</select>
									</div>
								</div>

								<div class="col-md-12 col-sm-12  mb-4">
                                    <div class="" id="voice-minify">
                                        <div class="form-group">
                                            <select id="voices" name="voice" class="form-select" data-placeholder="<?php echo e(__('Choose Your Voice')); ?>:" data-callback="voice_select">
                                                <?php $__currentLoopData = $voices; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $voice): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <option value="<?php echo e($voice->voice_id); ?>"
                                                            id="<?php echo e($voice->voice_id); ?>"
                                                            data-img="<?php if($voice->vendor == 'elevenlabs'): ?> <?php echo e($voice->avatar_url); ?> <?php else: ?> <?php echo e(URL::asset($voice->avatar_url)); ?> <?php endif; ?>"
                                                            data-id="<?php echo e($voice->voice_id); ?>"
                                                            data-lang="<?php echo e($voice->language_code); ?>"
                                                            data-type="<?php if($voice->vendor == 'elevenlabs'): ?> <?php echo e($voice->description); ?> <?php else: ?> <?php echo e($voice->voice_type); ?> <?php endif; ?>"
                                                            data-gender=<?php echo e($voice->gender); ?>
                                                            data-voice="<?php echo e($voice->voice); ?>"
                                                            data-url="<?php echo e(URL::asset($voice->sample_url)); ?>"
                                                        <?php if(auth()->user()->default_voiceover_voice == $voice->voice_id): ?> selected <?php endif; ?>
                                                            data-class="<?php if(auth()->user()->default_voiceover_language !== $voice->language_code): ?> remove-voice <?php endif; ?>">
                                                        <?php echo e($voice->voice); ?>
                                                    </option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select>
                                        </div>
                                    </div>
								</div>
                                <div class="col-md-6 col-sm-12 special-buttons  mb-4" id="style-box">
                                    <label>  <?php echo e(__('Speaking Style')); ?></label>
                                    <div class="dropdown">
                                        <button class="btn btn-special dropdown-toggle" type="button" id="speakingStyle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">


                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="speakingStyle">
                                            <button style="display: none" class="dropdown-item" type="button" id="newscast-formal"><?php echo e(__('Newscaster Formal')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="newscast-casual"><?php echo e(__('Newscast Casual')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="narration-professional"><?php echo e(__('Narration Professional')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="customerservice"><?php echo e(__('Customer Service')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="chat"><?php echo e(__('Chat')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="cheerful"><?php echo e(__('Cheerful')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="empathetic"><?php echo e(__('Empathetic')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="assistant"><?php echo e(__('Assistant')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="newscast"><?php echo e(__('Newscast')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="calm"><?php echo e(__('Calm')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="sad"><?php echo e(__('Sad')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="angry"><?php echo e(__('Angry')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="fearful"><?php echo e(__('Fearful')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="disgruntled"><?php echo e(__('Disgruntled')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="serious"><?php echo e(__('Serious')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="depressed"><?php echo e(__('Depressed')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="embarrassed"><?php echo e(__('Embarrassed')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="affectionate"><?php echo e(__('Affectionate')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="gentle"><?php echo e(__('Gentle')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="lyrical"><?php echo e(__('Lyrical')); ?></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12 special-buttons  mb-4" id="effect-box">
                                    <div class="dropdown">
                                        <label>
                                            <?php echo e(__('Voice Effects')); ?>

                                        </label>
                                        <button class="btn btn-special dropdown-toggle" type="button" id="voiceEffects" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="voiceEffects">
                                            <button class="dropdown-item" type="button" id="soft_effect"><?php echo e(__('Speak Softly')); ?></button>
                                            <button class="dropdown-item" type="button" id="breathing_effect"><?php echo e(__('Sound of Breathing')); ?></button>
                                            <button class="dropdown-item" type="button" id="whispered_effect"><?php echo e(__('Whispered')); ?></button>
                                            <button class="dropdown-item" type="button" id="drc_effect"><?php echo e(__('DRC Effect')); ?></button>
                                            <button class="dropdown-item" type="button" id="controlling_timbre"><?php echo e(__('Controlling Timbre')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="newscaster_effect"><?php echo e(__('Newscaster')); ?></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12 special-buttons  mb-4" id="sayas-box">
                                    <div class="dropdown">
                                        <label>
                                            <?php echo e(__('Say as')); ?>
                                        </label>
                                        <button class="btn btn-special dropdown-toggle" type="button" id="sayAs" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">


                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="sayAs">
                                            <button class="dropdown-item" type="button" id="characters_sayas"><?php echo e(__('Characters')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="verbatim_sayas"><?php echo e(__('Verbatim')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="bleep_sayas"><?php echo e(__('Bleep')); ?></button>
                                            <button class="dropdown-item" type="button" id="cardinal_sayas"><?php echo e(__('Cardinal')); ?></button>
                                            <button class="dropdown-item" type="button" id="ordinal_sayas"><?php echo e(__('Ordinal')); ?></button>
                                            <button class="dropdown-item" type="button" id="digits_sayas"><?php echo e(__('Digits')); ?></button>
                                            <button class="dropdown-item" type="button" id="fraction_sayas"><?php echo e(__('Fraction')); ?></button>
                                            <button class="dropdown-item" type="button" id="unit_sayas"><?php echo e(__('Unit')); ?></button>
                                            <button class="dropdown-item" type="button" id="time_sayas"><?php echo e(__('Time')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="gcp_time_sayas"><?php echo e(__('Time')); ?></button>
                                            <button class="dropdown-item" type="button" id="address_sayas"><?php echo e(__('Address')); ?></button>
                                            <button class="dropdown-item" type="button" id="expletive_sayas"><?php echo e(__('Beep Out')); ?></button>
                                            <button style="display: none" class="dropdown-item" type="button" id="telephone_sayas"><?php echo e(__('Telephone')); ?></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12 special-buttons  mb-4" id="emphasis-box">
                                    <div class="dropdown">
                                        <?php echo e(__('Emphasis')); ?>
                                        <button class="btn btn-special dropdown-toggle" type="button" id="emphasis" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="emphasis">
                                            <button class="dropdown-item" type="button" id="reduced_emphasis"><?php echo e(__('Reduced')); ?></button>
                                            <button class="dropdown-item" type="button" id="moderate_emphasis"><?php echo e(__('Moderate')); ?></button>
                                            <button class="dropdown-item" type="button" id="strong_emphasis"><?php echo e(__('Strong')); ?></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12 special-buttons  mb-4" id="volume-box">
                                    <div class="dropdown">
                                        <?php echo e(__('Volume')); ?>
                                        <button class="btn btn-special dropdown-toggle" type="button" id="volume" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">


                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="volume">
                                            <button class="dropdown-item" type="button" id="silent_volume"><?php echo e(__('Silent')); ?></button>
                                            <button class="dropdown-item" type="button" id="x_soft_volume"><?php echo e(__('x-Soft')); ?></button>
                                            <button class="dropdown-item" type="button" id="soft_volume"><?php echo e(__('Soft')); ?></button>
                                            <button class="dropdown-item" type="button" id="medium_volume"><?php echo e(__('Medium')); ?></button>
                                            <button class="dropdown-item" type="button" id="loud_volume"><?php echo e(__('Loud')); ?></button>
                                            <button class="dropdown-item" type="button" id="x_loud_volume"><?php echo e(__('x-Loud')); ?></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12 special-buttons  mb-4" id="speed-box">
                                    <div class="dropdown">
                                        <?php echo e(__('Speed')); ?>
                                        <button class="btn btn-special dropdown-toggle" type="button" id="speed" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="speed">
                                            <button class="dropdown-item" type="button" id="x_slow_speed"><?php echo e(__('x-Slow')); ?></button>
                                            <button class="dropdown-item" type="button" id="slow_speed"><?php echo e(__('Slow')); ?></button>
                                            <button class="dropdown-item" type="button" id="medium_speed"><?php echo e(__('Medium')); ?></button>
                                            <button class="dropdown-item" type="button" id="fast_speed"><?php echo e(__('Fast')); ?></button>
                                            <button class="dropdown-item" type="button" id="x_fast_speed"><?php echo e(__('x-Fast')); ?></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12 special-buttons  mb-4" id="pitch-box">
                                    <div class="dropdown">
                                        <?php echo e(__('Pitch')); ?>
                                        <button class="btn btn-special dropdown-toggle" type="button" id="pitch" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="pitch">
                                            <button class="dropdown-item" type="button" id="x_low_pitch"><?php echo e(__('x-Low')); ?></button>
                                            <button class="dropdown-item" type="button" id="low_pitch"><?php echo e(__('Low')); ?></button>
                                            <button class="dropdown-item" type="button" id="medium_pitch"><?php echo e(__('Medium')); ?></button>
                                            <button class="dropdown-item" type="button" id="high_pitch"><?php echo e(__('High')); ?></button>
                                            <button class="dropdown-item" type="button" id="x_high_pitch"><?php echo e(__('x-High')); ?></button>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 col-sm-12 special-buttons  mb-4" id="pause-box">
                                    <div class="dropdown">
                                        <?php echo e(__('Pauses')); ?>

                                        <button class="btn btn-special dropdown-toggle" type="button" id="pause" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="pause">
                                            <button class="dropdown-item" type="button" id="zero_pause"><?php echo e(__('0 second')); ?></button>
                                            <button class="dropdown-item" type="button" id="one_pause"><?php echo e(__('1 second')); ?></button>
                                            <button class="dropdown-item" type="button" id="two_pause"><?php echo e(__('2 seconds')); ?></button>
                                            <button class="dropdown-item" type="button" id="three_pause"><?php echo e(__('3 seconds')); ?></button>
                                            <button class="dropdown-item" type="button" id="four_pause"><?php echo e(__('4 seconds')); ?></button>
                                            <button class="dropdown-item" type="button" id="five_pause"><?php echo e(__('5 seconds')); ?></button>
                                            <button class="dropdown-item" type="button" id="six_pause"><?php echo e(__('6 seconds')); ?></button>
                                            <button class="dropdown-item" type="button" id="seven_pause"><?php echo e(__('7 seconds')); ?></button>
                                            <button class="dropdown-item" type="button" id="eight_pause"><?php echo e(__('8 seconds')); ?></button>
                                            <button class="dropdown-item" type="button" id="nine_pause"><?php echo e(__('9 seconds')); ?></button>
                                            <button class="dropdown-item" type="button" id="ten_pause"><?php echo e(__('10 seconds')); ?></button>
                                            <button class="dropdown-item" type="button" id="paragraph_pause"><?php echo e(__('Paragraph')); ?></button>
                                            <button class="dropdown-item" type="button" id="sentence_pause"><?php echo e(__('Sentence')); ?></button>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-4 ">
                                    <div class="col-md-12 col-sm-12">
                                        <div id="audio-format" role="radiogroup" class="d-flex flex-wrap justify-content-between">
										<span  id="mp3-format">
											<div class="radio-control">
												<input type="radio" name="format" class="input-control" id="mp3" value="mp3" checked>
												<label for="mp3" class="label-control">MP3</label>
											</div>
										</span>
                                            <span  id="wav-format">
											<div class="radio-control">
												<input type="radio" name="format" class="input-control" id="wav" value="wav">
												<label for="wav" class="label-control" id="wav-label">WAV</label>
											</div>
										</span>
                                            <span  id="ogg-format">
											<div class="radio-control">
												<input type="radio" name="format" class="input-control" id="ogg" value="ogg">
												<label for="ogg" class="label-control" id="ogg-label">OGG</label>
											</div>
										</span>
                                            <span  id="webm-format">
											<div class="radio-control">
												<input type="radio" name="format" class="input-control" id="webm" value="webm">
												<label for="webm" class="label-control" id="webm-label">WEBM</label>
											</div>
										</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer border-0 text-center mt-3 row">
                                    <span id="processing"><img src="<?php echo e(URL::asset('/img/svgs/processing.svg')); ?>" alt=""></span>
                                    <button type="button" class="btn btn-primary main-action-button col mr-2" id="listen-text"><?php echo e(__('Listen')); ?></button>
                                    <button type="button" class="btn btn-primary main-action-button col" id="synthesize-text"><?php echo e(__('Synthesize')); ?></button>
                                </div>

							</div>

                        <div class="col-lg-7 row" style="  background: white;
    padding: 36px;
    border: 0 solid;
    border-radius: 20px;">
                            								<div class="col-md-4 col-sm-12">
                            									<div class="input-box mb-0" id="textarea-box">
                            										<input type="text" class="form-control" name="title" id="title"  value="<?php echo e(__('New Audio')); ?>">
                            									</div>
                            								</div>

                            								<div class="col-md-4 col-sm-12">
                            									<div class="form-group">
                            										<select id="project" name="project" class="form-select" data-placeholder="<?php echo e(__('Select Workbook Name')); ?>">
                            											<option value="all"> <?php echo e(__('All Workbooks')); ?></option>
                            											<?php $__currentLoopData = $projects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $project): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            												<option value="<?php echo e($project->name); ?>" <?php if(strtolower(auth()->user()->project) == strtolower($project->name)): ?> selected <?php endif; ?>> <?php echo e(ucfirst($project->name)); ?></option>
                            											<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            										</select>
                            									</div>
                            								</div>
                            <?php if(config('settings.voiceover_ssml_effect') == 'enable'): ?>
                                <div class="row mb-6 col-4">


                                    <div class="col-md col-sm-12 special-buttons" id="azurepause-box">
                                        <div class="dropdown">
                                            <button class="btn btn-special dropdown-toggle" type="button" id="azurePause" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <?php echo e(__('Pauses')); ?>

                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="azurePause">
                                                <button class="dropdown-item" type="button" id="azure_zero_pause"><?php echo e(__('0 second')); ?></button>
                                                <button class="dropdown-item" type="button" id="azure_one_pause"><?php echo e(__('1 second')); ?></button>
                                                <button class="dropdown-item" type="button" id="azure_two_pause"><?php echo e(__('2 seconds')); ?></button>
                                                <button class="dropdown-item" type="button" id="azure_three_pause"><?php echo e(__('3 seconds')); ?></button>
                                                <button class="dropdown-item" type="button" id="azure_four_pause"><?php echo e(__('4 seconds')); ?></button>
                                                <button class="dropdown-item" type="button" id="azure_five_pause"><?php echo e(__('5 seconds')); ?></button>
                                                <button class="dropdown-item" type="button" id="azure_paragraph_pause"><?php echo e(__('Paragraph')); ?></button>
                                                <button class="dropdown-item" type="button" id="azure_sentence_pause"><?php echo e(__('Sentence')); ?></button>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md col-sm-12 special-buttons" id="sub-box">
                                        <div class="dropdown">
                                            <button class="btn btn-special" type="button" id="sub"><?php echo e(__('Replace')); ?></button>
                                        </div>
                                    </div>
                                </div>
                            <?php endif; ?>

                            <div class="row">
                                <div class="col-md-12">
                                    <div id="textarea-outer-box" class="p-2">
                                        <label class="input-label">
                                            <span class="input-label-content input-label-main"><?php echo e(__('Text to Speech')); ?></span>
                                        </label>
                                        <div id="textarea-container">
                                            <div id="textarea-row-box">
                                                <div class="textarea-row" id="maintextarea">
                                                    <div class="textarea-voice">
                                                        <div class="ml-1 mt-1 voicee"><img src="" id="ZZZOOOVVVIMG"  data-tippy-content=""></div>
                                                    </div>
                                                    <div class="textarea-text">
                                                        <textarea class="form-control textarea" name="textarea[]" id="ZZZOOOVVVZ" data-voice="" onkeyup="countCharacters();" onmousedown="mouseDown(this);" rows="1" placeholder="<?php echo e(__('Enter your text here to synthesize')); ?>..." maxlength="5000"></textarea>
                                                    </div>
                                                    <div class="textarea-actions">
                                                        <div class="textarea-buttons">
                                                            <button class="btn buttons synthesizeText" id="ZZZOOOVVVL" onclick="listenRow(this); return false;" data-tippy-content="<?php echo e(__('Listen Text')); ?>" ><svg width="51" height="50" viewBox="0 0 51 50" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                    <rect width="51" height="50" rx="12" fill="#E0E5F2"/>
                                                                    <path d="M17 24.9994V21.4394C17 17.0194 20.13 15.2094 23.96 17.4194L27.05 19.1994L30.14 20.9794C33.97 23.1894 33.97 26.8094 30.14 29.0194L27.05 30.7994L23.96 32.5794C20.13 34.7894 17 32.9794 17 28.5594V24.9994Z" stroke="#2B3674" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/>
                                                                </svg>
                                                            </button>
                                                            <button class="btn buttons addPause" id="ZZZOOOVVVP" onclick="addPause(this); return false;" data-tippy-content="<?php echo e(__('Add Pause After Text')); ?>"><svg width="51" height="50" viewBox="0 0 51 50" fill="none" xmlns="http://www.w3.org/2000/svg"> <rect width="51" height="50" rx="12" fill="#E0E5F2"/> <path d="M33.75 26.25C33.75 31.08 29.83 35 25 35C20.17 35 16.25 31.08 16.25 26.25C16.25 21.42 20.17 17.5 25 17.5C29.83 17.5 33.75 21.42 33.75 26.25Z" stroke="#2B3674" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/> <path d="M25 21V26" stroke="#2B3674" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/> <path d="M22 15H28" stroke="#2B3674" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/> </svg></button>
                                                            <button type="button" class="btn buttons deleteText" id="ZZZOOOVVVDEL" onclick="deleteRow(this); return false;" data-tippy-content="<?php echo e(__('Delete This Text Block')); ?>"><svg width="51" height="50" viewBox="0 0 51 50" fill="none" xmlns="http://www.w3.org/2000/svg"> <rect width="51" height="50" rx="12" fill="#E0E5F2"/> <path d="M34 18.9805C30.67 18.6505 27.32 18.4805 23.98 18.4805C22 18.4805 20.02 18.5805 18.04 18.7805L16 18.9805" stroke="#2B3674" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/> <path d="M21.5 17.97L21.72 16.66C21.88 15.71 22 15 23.69 15H26.31C28 15 28.13 15.75 28.28 16.67L28.5 17.97" stroke="#2B3674" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/> <path d="M31.8499 22.1406L31.1999 32.2106C31.0899 33.7806 30.9999 35.0006 28.2099 35.0006H21.7899C18.9999 35.0006 18.9099 33.7806 18.7999 32.2106L18.1499 22.1406" stroke="#2B3674" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/> <path d="M23.3301 29.5H26.6601" stroke="#2B3674" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/> <path d="M22.5 25.5H27.5" stroke="#2B3674" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/> </svg></button>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="textarea-add text-center mt-2">
                                                <button class="btn col-12 d-flex justify-content-between align-items-center" id="addTextRow" data-tippy-content="<?php echo e(__('Add New Text Block')); ?>">
                                                    <div class="col-4 " style="background: #E0E5F2"></div>
                                                    <div style="color: #B4B9C1">
                                                        Add New Text Block <svg width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M12.2085 17.625H23.9585" stroke="#B4B9C1" stroke-width="2.20312" stroke-linecap="round" stroke-linejoin="round"/> <path d="M18.0835 23.5V11.75" stroke="#B4B9C1" stroke-width="2.20312" stroke-linecap="round" stroke-linejoin="round"/> </svg>
                                                    </div>
                                                    <div class="col-4 " style="background: #E0E5F2"></div>

                                                   </button>


                                            </div>
                                        </div>
                                        <div id="textarea-settings">
                                            <div class="character-counter">
                                                <span id="total-characters">0 <?php echo e(__('characters')); ?>, 1 <?php echo e(__('line')); ?></span>
                                            </div>

                                            <div class="clear-button">
                                                <button type="button" id="delete-all-lines"><?php echo e(__('Delete All Lines')); ?></button>
                                                <button type="button" id="clear-effects"><?php echo e(__('Clear Effects')); ?></button>
                                                <button type="button" id="clear-text"><?php echo e(__('Clear Text')); ?></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="mt-5 text-center" id="waveform-box">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div id="waveform">
                                            <audio style="display:none" id="media-element" src="" type=""></audio>
                                        </div>
                                        <div id="wave-timeline"></div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div id="controls" class="mt-4 mb-3">
                                            <button id="backwardBtn" class="result-play result-play-sm mr-2"><i class="fa fa-backward"></i></button>
                                            <button id="playBtn" class="result-play result-play-sm mr-2"><i class="fa fa-play"></i></button>
                                            <button id="stopBtn" class="result-play result-play-sm mr-2"><i class="fa fa-stop"></i></button>
                                            <button id="forwardBtn" class="result-play result-play-sm mr-2"><i class="fa fa-forward"></i></button>
                                            <a id="downloadBtn" class="result-play result-play-sm" href="" download><i class="fa fa-download"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
						</form>

				</div>
			</div>
		</div>
	</div>

	<div class="row mt-4" id="results-header">
		<div class="col-lg-12 col-md-12 col-xm-12">
			<div class="card border-0">
				<div class="card-header">
					<h3 class="card-title"><?php echo e(__('AI Voiceover Results')); ?> <span class="text-muted">(<?php echo e(__('Current Day')); ?>)</span></h3>
				</div>
				<div class="card-body pt-2">
					<!-- SET DATATABLE -->
					<table id='resultTable' class='table' width='100%'>
							<thead>
								<tr>
									<th width="3%"></th>
									<th width="10%"><?php echo e(__('Created On')); ?></th>
									<th width="8%"><?php echo e(__('Language')); ?></th>
									<th width="7%"><?php echo e(__('Voice')); ?></th>
									<th width="7%"><?php echo e(__('Gender')); ?></th>
									<th width="4%"><i class="fa fa-music fs-14"></i></th>
									<th width="4%"><i class="fa fa-cloud-download fs-14"></i></th>
									<th width="5%"><?php echo e(__('Format')); ?></th>
									<th width="5%"><?php echo e(__('Chars')); ?></th>
									<th width="9%"><?php echo e(__('Workbook')); ?></th>
									<th width="5%"><?php echo e(__('Actions')); ?></th>
								</tr>
							</thead>
					</table> <!-- END SET DATATABLE -->
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
@section('js')
	<!-- Green Audio Players JS -->
	<script src="{{ URL::asset('plugins/audio-player/green-audio-player.js') }}"></script>
	<script src="{{ URL::asset('js/audio-player.js') }}"></script>
	<script src="{{ URL::asset('js/wavesurfer.min.js') }}"></script>
	<script src="{{ URL::asset('plugins/wavesurfer/wavesurfer.cursor.min.js') }}"></script>
	<script src="{{ URL::asset('plugins/wavesurfer/wavesurfer.timeline.min.js') }}"></script>
	<!-- Data Tables JS -->
	<script src="{{URL::asset('plugins/datatable/datatables.min.js')}}"></script>
	<script src="{{URL::asset('plugins/sweetalert/sweetalert2.all.min.js')}}"></script>
	<script src="{{URL::asset('js/dashboard.js')}}"></script>
	<script type="text/javascript">
		$(function () {

			"use strict";

			$('#add-project').on('click', function() {
				$('#projectModal').modal('show');
			});
			
			function format(d) {
				// `d` is the original data object for the row
				return '<div class="slider">'+
							'<table class="details-table">'+
								'<tr>'+
									'<td class="details-title" width="10%">Title:</td>'+
									'<td>'+ ((d.title == null) ? '' : d.title) +'</td>'+
								'</tr>'+
								'<tr>'+
									'<td class="details-title" width="10%">Text Clean:</td>'+
									'<td>'+ d.text +'</td>'+
								'</tr>'+
								'<tr>'+
									'<td class="details-title" width="10%">Text Raw:</td>'+
									'<td>'+ d.text_raw +'</td>'+
								'</tr>'+
								'<tr>'+
									'<td class="details-result" width="10%">Synthesized Result:</td>'+
									'<td><audio controls preload="none">' +
										'<source src="'+ d.result +'" type="'+ d.audio_type +'">' +
									'</audio></td>'+
								'</tr>'+
							'</table>'+
						'</div>';
			}


			var table = $('#resultTable').DataTable({
				"lengthMenu": [[25, 50, 100, -1], [25, 50, 100, "All"]],
				responsive: {
					details: {type: 'column'}
				},
				colReorder: true,
				language: {
					"emptyTable": "<div><img id='no-results-img' src='{{ URL::asset('img/files/no-result.png') }}'><br>{{ __('No synthesized text results yet') }}</div>",
					"info": "{{ __('Showing page') }} _PAGE_ {{ __('of') }} _PAGES_",
					search: "<i class='fa fa-search search-icon'></i>",
					lengthMenu: '_MENU_ ',
					paginate : {
						first    : '<i class="fa fa-angle-double-left"></i>',
						last     : '<i class="fa fa-angle-double-right"></i>',
						previous : '<i class="fa fa-angle-left"></i>',
						next     : '<i class="fa fa-angle-right"></i>'
					}
				},
				pagingType : 'full_numbers',
				processing: true,
				serverSide: true,
				ajax: "{{ route('user.voiceover') }}",
				columns: [{
						"className":      'details-control',
						"orderable":      false,
						"searchable":     false,
						"data":           null,
						"defaultContent": ''
					},
					{
						data: 'created-on',
						name: 'created-on',
						orderable: true,
						searchable: true
					},																		
					{
						data: 'custom-language',
						name: 'custom-language',
						orderable: true,
						searchable: true
					},
					{
						data: 'voice',
						name: 'voice',
						orderable: true,
						searchable: true
					},
					{
						data: 'gender',
						name: 'gender',
						orderable: true,
						searchable: true
					},	
					{
						data: 'single',
						name: 'single',
						orderable: true,
						searchable: true
					},				
					{
						data: 'download',
						name: 'download',
						orderable: true,
						searchable: true
					},	
					{
						data: 'result_ext',
						name: 'result_ext',
						orderable: true,
						searchable: true
					},		
					{
						data: 'characters',
						name: 'characters',
						orderable: true,
						searchable: true
					},	
					{
						data: 'project',
						name: 'project',
						orderable: true,
						searchable: true
					},				
					{
						data: 'actions',
						name: 'actions',
						orderable: false,
						searchable: false
					},
				]
			});
			

			$('#resultTable tbody').on('click', 'td.details-control', function () {
				var tr = $(this).closest('tr');
				var row = table.row( tr );
		
				if ( row.child.isShown() ) {
					// This row is already open - close it
					$('div.slider', row.child()).slideUp( function () {
						row.child.hide();
						tr.removeClass('shown');
					} );
				}
				else {
					// Open this row
					row.child( format(row.data()), 'no-padding' ).show();
					tr.addClass('shown');
		
					$('div.slider', row.child()).slideDown();
				}
			});


			let user_voice = "{{ auth()->user()->default_voiceover_voice }}";
			if (user_voice) {
				voice_select(user_voice);
			}
			


			// DELETE SYNTHESIZE RESULT
			$(document).on('click', '.deleteResultButton', function(e) {

				e.preventDefault();

				Swal.fire({
					title: '{{ __('Confirm Result Deletion') }}',
					text: '{{ __('It will permanently delete this synthesize result') }}',
					icon: 'warning',
					showCancelButton: true,
					confirmButtonText: '{{ __('Delete') }}',
					reverseButtons: true,
				}).then((result) => {
					if (result.isConfirmed) {
						var formData = new FormData();
						formData.append("id", $(this).attr('id'));
						$.ajax({
							headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },
							method: 'post',
							url: 'text-to-speech/delete',
							data: formData,
							processData: false,
							contentType: false,
							success: function (data) {
								if (data == 'success') {
									Swal.fire('{{ __('Result Deleted') }}', '{{ __('Synthesize result has been successfully deleted') }}', 'success');	
									$("#resultTable").DataTable().ajax.reload();								
								} else {
									Swal.fire('{{ __('Delete Failed') }}', '{{ __('There was an error while deleting this result') }}', 'error');
								}      
							},
							error: function(data) {
								Swal.fire({ type: 'error', title: 'Oops...', text: 'Something went wrong!' })
							}
						})
					} 
				})
			});


			/*************************************************
			 *  Process File Synthesize Mode
			 *************************************************/
			$('#synthesize-text').on('click',function(e) {

				"use strict";

				e.preventDefault()

				let map = new Map();
				let textarea = document.getElementsByTagName("textarea");
				let full_textarea = textarea.length;
				let full_text = '';

				if (textarea.length == 1) {
					let value = document.getElementById('ZZZOOOVVVZ').value;
					let voice = document.getElementById('ZZZOOOVVVZ').getAttribute('data-voice');

					if (value.length == 0) {
						Swal.fire('{{ __('Missing Input Text') }}', '{{ __('Enter your text that you want to synthezise before processing') }}', 'warning');
					} else if (value.length > text_length_limit) { 
						Swal.fire('{{ __('Text to Speech Notification') }}', '{{ __('Text exceeded allowed length, maximum allowed text length is ') }}' + text_length_limit + '{{__(' characters. Please decrease the overall text length.')}}', 'warning'); 
					} else {
						map.set(voice, value);
						startSynthesizeMode(1, map, value);
					}

				} else {

					for (let i = 0; i < textarea.length; i++) {

						let value = textarea[i].value;
						let voice = textarea[i].getAttribute('data-voice');
						let distinct = generateID(3);
						
						if (value != '') {
							map.set(voice +'___'+ distinct, value);
							full_text +=value;
						} else {
							full_textarea--;
						}
					}

					if (full_text.length == 0) {
						Swal.fire('{{ __('Missing Input Text') }}', '{{ __('Enter your text that you want to synthezise before processing') }}', 'warning');
					} else if (full_text.length > text_length_limit) { 
						Swal.fire('{{ __('Text to Speech Notification') }}', '{{ __('Text exceeded allowed length, maximum allowed total text length is ') }}' + text_length_limit + '{{__(' characters. Please decrease the text length.')}}', 'warning'); 
					} else {
						startSynthesizeMode(full_textarea, map, full_text);
					}    
				}
			});


			/*************************************************
			 *  Process Live Synthesize Listen Mode
			 *************************************************/
			$('#listen-text').on('click', function(e) {

				"use strict";

				e.preventDefault()

				let map = new Map();
				let textarea = document.getElementsByTagName("textarea");
				let full_textarea = textarea.length;
				let full_text = '';

				if (textarea.length == 1) {
					let value = document.getElementById('ZZZOOOVVVZ').value;
					let voice = document.getElementById('ZZZOOOVVVZ').getAttribute('data-voice');

					if (value.length == 0) {
						Swal.fire('{{ __('Missing Input Text') }}', '{{ __('Enter your text that you want to synthezise before processing') }}', 'warning');
					} else if (value.length > text_length_limit) { 
						Swal.fire('{{ __('Text to Speech Notification') }}', '{{ __('Text exceeded allowed length, maximum allowed text length is ') }}' + text_length_limit + '{{__(' characters. Please decrease the text length.')}}', 'warning'); 
					} else {
						map.set(voice, value);
						startListenMode(1, map, value);
					}

				} else {

					for (let i = 0; i < textarea.length; i++) {

						let value = textarea[i].value;
						let voice = textarea[i].getAttribute('data-voice');
						let distinct = generateID(3);
						
						if (value != '') {
							map.set(voice +'___'+ distinct, value);
							full_text +=value;
						} else {
							full_textarea--;
						}
					}

					if (full_text.length == 0) {
						Swal.fire('{{ __('Missing Input Text') }}', '{{ __('Enter your text that you want to synthezise before processing') }}', 'warning');
					} else if (full_text.length > text_length_limit) { 
						Swal.fire('{{ __('Text to Speech Notification') }}', '{{ __('Text exceeded allowed length, maximum allowed total text length is ') }}' + text_length_limit + '{{__(' characters. Please decrease the overall text length.')}}', 'warning'); 
					} else {
						startListenMode(full_textarea, map, full_text);
					}    
				}
			});


		});	
		
		
		/*===========================================================================
		*
		*  Listen Row 
		*
		*============================================================================*/
		function listenRow(row) {

			let id = row.id;
			id = id.slice(0, -1);

			let text = document.getElementById(id + 'Z');
			let voice = text.getAttribute('data-voice');
			let format = document.querySelector('input[name="format"]:checked').value;

			if (text.value == '') {    
				Swal.fire('{{ __('Text to Speech Notification') }}', '{{ __('Please enter text to synthesize first') }}', 'warning');    
			} else if (text.value.length > text_length_limit) { 
				Swal.fire('{{ __('Text to Speech Notification') }}', '{{ __('Text exceeded allowed length, maximum allowed text length is ') }}' + text_length_limit + '{{__(' characters. Please decrease the text length.')}}', 'warning'); 
			} else {

				let selected_text = "";
				if (window.getSelection) {
					selected_text = window.getSelection().toString();
				} else if (document.selection && document.selection.type != "Control") {
					selected_text = document.selection.createRange().selected_text;
				}

				$.ajax({
					headers: {
						'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
					},
					type: "POST",
					url: 'text-to-speech/listen-row',
					data: { row_text:text.value, voice:voice, selected_text:selected_text, format:format, selected_text_length:selected_text.length},
					beforeSend: function() {
						$('#' + row.id).html('<i class="fa-solid fa-waveform-lines"></i>');
						$('#' + row.id).prop('disabled', true);         
						$('#waveform-box').slideUp('slow')   
					},
					complete: function() {
						$('#' + row.id).prop('disabled', false);
						$('#' + row.id).html('<i class="fa-solid fa-message-music"></i>');              
					},
					success: function(data) {
						animateValue("balance-number", data['old'], data['current'], 2000);
						$('#waveform-box').slideDown('slow')
					},
					error: function(data) {
						if (data.responseJSON['error']) {
							Swal.fire('{{ __('Text to Speech Notification') }}', data.responseJSON['error'], 'warning');
						}

						$('#' + row.id).prop('disabled', false);
						$('#' + row.id).html('<i class="fa-solid fa-message-music"></i>');    
						$('#waveform-box').slideUp('slow')            
					}
				}).done(function(data) {

					let download = document.getElementById('downloadBtn');

					if (download) {
						document.getElementById('downloadBtn').href = data['url'];
					}
					
					wavesurfer.load(data['url']);

					wavesurfer.on('ready',     
						wavesurfer.play.bind(wavesurfer),
						playBtn.innerHTML = '<i class="fa fa-pause"></i>',
						playBtn.classList.add('isPlaying'),
					);
				})
			}

		}


		function deleteRow(row) {
			let id = row.id;

			if(id != 'ZZZOOOVVVDEL') {
				id = id.slice(0, -3);
				$('#' + id).remove();
				total_rows--;
				countCharacters();

			} else {
				let main_img = document.getElementById('ZZZOOOVVVIMG');
				main_img.setAttribute('src', textarea_img);

				let main_voice = document.getElementById('ZZZOOOVVVZ');
				main_voice.setAttribute('data-voice', textarea_voice_id);

				let instance = tippy(document.getElementById('ZZZOOOVVVIMG'));
				instance.setProps({
					animation: 'scale-extreme',
					theme: 'material',
					content: textarea_voice_details,
				});

				main_voice.value = "";
				if (total_rows == 1) {
					$('#total-characters').text('0 characters, 1 line');
				}

				Swal.fire('{{ __('Main Text Line') }}', '{{ __('Main text line cannot be deleted, line voice will change to the main selected one') }}', 'warning');
			}
		}
	</script>
@endsection