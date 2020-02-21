<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdmitWorld Education Consultants</title>
<style>
.bg-white {
	background-color: #fff;
}


#accordion-style-1 .card-header .collapsed .main{
	display:none;
}

#accordion-style-1 .card-header  .main{
	
    position: absolute;
 
	display:block;
}



/*******************************
* Does not work properly if "in" is added after "collapse".
* Get free snippets on bootpen.com
*******************************/
    .panel-group .panel {
        border-radius: 0;
        box-shadow: none;
        border-color: #fdc735;
    }

    .panel-default > .panel-heading {
        padding: 0;
        border-radius: 0;
        color: #212121;
        background-color: #fdc735 !important;
        border-color: #EEEEEE;
    }

    .panel-title {
        font-size: 14px;
    }

    .panel-title > a {
        display: block;
        padding: 15px;
        text-decoration: none;
    }

    .more-less {
        float: right;
        color: #212121;
    }

    .panel-default > .panel-heading + .panel-collapse > .panel-body {
        border-top-color: #EEEEEE;
    }

/* ----- v CAN BE DELETED v ----- */
body {
    background-color: #26a69a;
}

.demo {
    padding-top: 60px;
    padding-bottom: 60px;
}
</style>
<script>
function toggleIcon(e) {
    $(e.target)
        .prev('.panel-heading')
        .find(".more-less")
        .toggleClass('glyphicon-plus glyphicon-minus');
}
$('.panel-group').on('hidden.bs.collapse', toggleIcon);
$('.panel-group').on('shown.bs.collapse', toggleIcon);
</script>
</head>
<body>
	<jsp:include page="commonheader.jsp" />
	<div id="et-main-area">
		<div id="main-content">
			<article>
				<div class="entry-content">
					<div id="et-boc" class="et-boc">
						<div class="et_builder_inner_content et_pb_gutters3">
							<div class="et_pb_section et_pb_section_0 et_pb_fullwidth_section et_section_regular">
								<div id="what-we-do-hero-section"
									class="et_pb_section et_pb_section_1 et_section_regular section_has_divider et_pb_bottom_divider">
									<div
										class="et_pb_module et_pb_fullwidth_post_title_0 et_pb_post_title  et_pb_text_align_left et_pb_bg_layout_light et_pb_featured_bg">
										<div class="et_pb_title_container">
											<div class="et_pb_row et_pb_row_0">
												<div
													class="et_pb_column et_pb_column_2_5 et_pb_column_0  et_pb_css_mix_blend_mode_passthrough">
													<div
														class="et_pb_module et_pb_text et_pb_text_0 et_pb_bg_layout_light  et_pb_text_align_left">
														<div class="et_pb_text_inner">
															<h1 id="what-we-do">
																<strong>What We Do</strong>
															</h1>
														</div>
													</div>
												</div>
												<div
													class="et_pb_column et_pb_column_3_5 et_pb_column_1  et_pb_css_mix_blend_mode_passthrough et-last-child">
													<div
														class="et_pb_module et_pb_text et_pb_text_1 et_pb_bg_layout_light  et_pb_text_align_left">
														<div class="et_pb_text_inner">
															<h2 id="everything-that-we-do-is-for-s">Everything
																that we do is for students and careers</h2>
															<p>Admitworld derives its competency from a panel
																that comprises of study abroad counsellors, career
																guidance experts, psychologists and faculty members with
																many years of experience in their respective fields.</p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="et_pb_bottom_inside_divider"></div>

								</div>
								<div id="what-we-do-section-2"
									class="et_pb_section et_pb_section_2 et_pb_with_background et_section_regular section_has_divider et_pb_bottom_divider">
									<div class="et_pb_row et_pb_row_1">
										<div
											class="et_pb_column et_pb_column_4_4 et_pb_column_2  et_pb_css_mix_blend_mode_passthrough et-last-child">
											<div
												class="et_pb_module et_pb_text et_pb_text_2 what-we-do-section-2-heading et_pb_bg_layout_light  et_pb_text_align_center">
												<div class="et_pb_text_inner">
													<h2 id="overseas-education-consulting">
														<span style="color: #ffffff;">OVERSEAS EDUCATION
															CONSULTING</span>
													</h2>
													<p>Admitworld is one of the finest overseas education
														consultants guiding students wishing to study abroad. Admitworld
														guides right from start to end in the process of studying
														abroad in:</p>
												</div>
											</div>
										</div>
									</div>
									<div class="et_pb_row et_pb_row_2">
										<div
											class="et_pb_column et_pb_column_4_4 et_pb_column_3  et_pb_css_mix_blend_mode_passthrough et-last-child">
											<div
												class="et_pb_module et_pb_bg_layout_light  et_pb_text_align_left">
												<div class="et_pb_text_inner">
													<div id="wpv-view-layout-2149-TCPID464"
														class="js-wpv-view-layout js-wpv-layout-responsive js-wpv-view-layout-2149-TCPID464">
														<div class="row">
															<div class="col-md-2"></div>
															<div class="col-md-2">
																<div class="col-md-12 bg-white">
																	<div class="col-md-5 "
																		style="padding: 10px; text-align: center">
																		<a href="/study-in-usa/"> <img
																			src="wp-content/uploads/2018/11/us-flag.jpg"
																			title="us-flag" class="attachment-full">
																		</a>
																	</div>
																	<div class="col-md-7"
																		style="padding: 10px; text-align: center; padding: 35px 5px">
																		<a href="/study-in-usa/">
																			<h6>Study in USA</h6>
																		</a>
																	</div>
																</div>
															</div>
															<div class="col-md-2 ">
																<div class="col-md-12 bg-white">
																	<div class="col-md-5"
																		style="padding: 10px; text-align: center">
																		<a href="#"> <img
																			src="wp-content/uploads/2018/11/australia-flag.jpg"
																			title="australia-flag">
																		</a>
																	</div>
																	<div class="col-md-7"
																		style="padding: 10px; text-align: center; padding: 35px 5px">
																		<a href="#">
																			<h6>Study in Australia</h6>
																		</a>
																	</div>
																</div>
															</div>
															<div class="col-md-2">
																<div class="col-md-12 bg-white">
																	<div class="col-md-5"
																		style="padding: 10px; text-align: center">
																		<a href="#"> <img
																			src="wp-content/uploads/2018/11/canada-flag.jpg"
																			title="canada-flag" class="attachment-full">
																		</a>
																	</div>
																	<div class="col-md-7"
																		style="padding: 10px; text-align: center; padding: 35px 5px">
																		<a href="#">
																			<h6>Study in Canada</h6>
																		</a>
																	</div>
																</div>
															</div>
															<div class="col-md-2">
																<div class="col-md-12 bg-white">
																	<div class="col-md-5"
																		style="padding: 10px; text-align: center">
																		<a href="#"> <img
																			src="wp-content/uploads/2018/11/dubai-flag.jpg"
																			title="dubai-flag" class="attachment-full">
																		</a>
																	</div>
																	<div class="col-md-7"
																		style="padding: 10px; text-align: center; padding: 35px 5px">
																		<a href="#">
																			<h6>Study in Dubai</h6>
																		</a>
																	</div>
																</div>
															</div>
															<div class="col-md-2"></div>
														</div>
														
														<div class="row" style="margin-top: 15px;">
															<div class="col-md-2"></div>
															
															<div class="col-md-2">
																<div class="col-md-12 bg-white">
																	<div class="col-md-5"
																		style="padding: 10px; text-align: center">
																		<a href="#"> <img
																			src="wp-content/uploads/2018/11/hong-kong-flag.jpg"
																			title="hong-kong-flag" class="attachment-full">
																		</a>
																	</div>
																	<div class="col-md-7"
																		style="padding: 10px; text-align: center; padding: 35px 5px">
																		<a href="#">
																			<h6>Study in Hong Kong</h6>
																		</a>
																	</div>
																</div>
															</div>
															
															<div class="col-md-2">
																<div class="col-md-12 bg-white">
																	<div class="col-md-5"
																		style="padding: 10px; text-align: center">
																		<a href="#"> <img
																			src="wp-content/uploads/2018/11/malaysia-flag.jpg"
																			title="malaysia-flag" class="attachment-full">
																		</a>
																	</div>
																	<div class="col-md-7"
																		style="padding: 10px; text-align: center; padding: 35px 5px">
																		<a href="#">
																			<h6>Study in Malaysia</h6>
																		</a>
																	</div>
																</div>
															</div>
															<div class="col-md-2">
																<div class="col-md-12 bg-white">
																	<div class="col-md-5"
																		style="padding: 10px; text-align: center">
																		<a href="#"> <img
																			src="wp-content/uploads/2018/11/new-zealand-flag.jpg"
																			title="new-zealand-flag" class="attachment-full" />
																		</a>
																	</div>
																	<div class="col-md-7"
																		style="padding: 10px; text-align: center; padding: 35px 5px">
																		<a href="#">
																			<h6>Study in New Zealand</h6>
																		</a>
																	</div>
																</div>
															</div>
																<div class="col-md-2">
																<div class="col-md-12 bg-white">
																	<div class="col-md-5"
																		style="padding: 10px; text-align: center">
																		<a href="#"> <img
																			src="wp-content/uploads/2018/11/singapore-flag.jpg"
																			title="singapore-flag" class="attachment-full" />

																		</a>
																	</div>
																	<div class="col-md-7"
																		style="padding: 10px; text-align: center; padding: 35px 5px">
																		<a href="#">
																			<h6>Study in Singapore</h6>
																		</a>
																	</div>
																</div>
															</div>
															<div class="col-md-2"></div>
														</div>
														
														<div class="row" style="margin-top: 15px;">
															<div class="col-md-2"></div>
														
														
															<div class="col-md-2">
																<div class="col-md-12 bg-white">
																	<div class="col-md-5"
																		style="padding: 10px; text-align: center">
																		<a href="#"> <img
																			src="wp-content/uploads/2018/11/uk-flag.jpg"
																			title="uk-flag" class="attachment-full">
																		</a>
																	</div>
																	<div class="col-md-7"
																		style="padding: 10px; text-align: center; padding: 35px 5px">
																		<a href="#">
																			<h6>Study in UK</h6>
																		</a>
																	</div>
																</div>
															</div>
															<div class="col-md-2">
																<div class="col-md-12 bg-white">
																	<div class="col-md-5"
																		style="padding: 10px; text-align: center">
																		<a href="#"> <img
																			src="wp-content/uploads/2018/11/ireland-flag.jpg"
																			title="ireland-flag" class="attachment-full">

																		</a>
																	</div>
																	<div class="col-md-7"
																		style="padding: 10px; text-align: center; padding: 35px 5px">
																		<a href="#">
																			<h6>Study in Ireland</h6>
																		</a>
																	</div>
																</div>
															</div>
															
															
															<div class="col-md-6"></div>
														</div>
													

													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="et_pb_bottom_inside_divider"></div>
								</div>
								<div class="et_pb_section et_pb_section_3 et_section_regular">
									<div class="et_pb_row et_pb_row_3">
										<div
											class="et_pb_column et_pb_column_4_4 et_pb_column_4  et_pb_css_mix_blend_mode_passthrough et-last-child">
											<div
												class="et_pb_module et_pb_text et_pb_text_4 et_pb_bg_layout_light  et_pb_text_align_left">
												<div class="et_pb_text_inner">
													<p>Our team of expert education counsellors counsel
														1000s of students each year and have helped students to
														apply to nearly all top Universities in the world. Right
														from helping to decide whether to study in India or
														identify equivalent or better opportunities abroad to
														guiding right through the process of shortlisting the
														right set of Universities, assisting with applications,
														essay editing, helping with scholarship applications and
														essays, visa guidance, pre-departure briefing and more,
														our team ensures that students enjoy an experiential
														process and make the right career choice.</p>
													<p>Admitworld has placed 1000s of students abroad and
														is continuing strongly</p>
													<p>Admitworld represents a large number of overseas
														universities in India, making it easier for students to
														interact with university officials and get better
														admission results</p>
												</div>
											</div>
										</div>
									</div>
									<div class="et_pb_row et_pb_row_4" style="margin-top: 15px">
										<div class="col-md-2"></div>
										<div class="col-md-4">
											<div
												class="et_pb_with_border et_pb_module et_pb_blurb et_pb_blurb_0 et_pb_bg_layout_light  et_pb_text_align_left  et_pb_blurb_position_left">
												<div class="et_pb_blurb_content">
													<div class="et_pb_main_blurb_image">
														<span class="et_pb_image_wrap"> <span
															class="et-waypoint et_pb_animation_top et-pb-icon divi_et_icon_gtm et-animated">l</span>
														</span>
													</div>
													<div class="et_pb_blurb_container">
														<h2 class="et_pb_module_header">
															<span>Courses</span>
														</h2>
														<div class="et_pb_blurb_description">
															<p>Counsellors at Admitworld have guided students for
																nearly all programs, right from medicals &amp;
																dentistry, engineering, information technology, law,
																business management to art &amp; design, fashion,
																architecture, sports &amp; exercise science, psychology,
																physiology, nutrition, or even gender studies. You name
																a program and we will identify the best suitable options
																for you.</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div
												class="et_pb_with_border et_pb_module et_pb_blurb et_pb_blurb_1 et_pb_bg_layout_light  et_pb_text_align_left  et_pb_blurb_position_left">
												<div class="et_pb_blurb_content">
													<div class="et_pb_main_blurb_image">
														<span class="et_pb_image_wrap"> <span
															class="et-waypoint et_pb_animation_top et-pb-icon divi_et_icon_gtm et-animated"></span>
														</span>
													</div>
													<div class="et_pb_blurb_container">
														<h2 class="et_pb_module_header">
															<span>Study Level</span>
														</h2>
														<div class="et_pb_blurb_description">
															<p>We have placed students for A Levels, Foundation,
																Bachelors, Masters, Masters (by research), and Doctorate
																(PhD) programs.</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-2"></div>

									</div>
								</div>


								<div
									class="et_pb_section et_pb_section_4 et_pb_with_background et_section_regular section_has_divider et_pb_bottom_divider et_pb_top_divider">
									<div class="et_pb_top_inside_divider"></div>
									<div class="et_pb_row et_pb_row_5">
										<div
											class="et_pb_column et_pb_column_4_4 et_pb_column_7  et_pb_css_mix_blend_mode_passthrough et-last-child">
											<div
												class="et_pb_module et_pb_text et_pb_text_5 et_pb_bg_layout_light  et_pb_text_align_left">
												<div class="et_pb_text_inner">
													<h3 id="study-in-india:-career-guidanc"
														style="text-align: center;">
														<strong>STUDY IN INDIA: CAREER GUIDANCE AND
															CAREER COUNSELLING:</strong>
													</h3>
													<p>The biggest dilemma in the mind of parents and
														students is between ‘Studying in India vs Studying
														Abroad’, the pros and cons of making the final decision,
														and drawing the right career path. Our experts not only
														assist with selecting the right course but also help you
														draw a pathway for the next several years.</p>
													<p>
														<strong>Career Testing</strong>: To guide students and
														parents, we conduct career guidance and career counselling
														for College and School students. Through standardized
														career assessment tests (aptitude test, personality test,
														interest test, projective test, career analysis test,
														more) and in-depth one-to-one counselling, we help parents
														and students make an informed choice about the future
														course and career selection.
													</p>
													<p>
														Our discussions help individuals with: matching interests
														and aptitude, selecting the right course, reducing the
														load of entrance exams, school / college decision-making
														(for 8<sup>th</sup> to 12<sup>th</sup> std. students),
														stream selection (arts, science, commerce), making career
														change (for job professionals) and more
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="et_pb_row et_pb_row_6">
										<div
											class="et_pb_column et_pb_column_4_4 et_pb_column_8  et_pb_css_mix_blend_mode_passthrough et-last-child">
											<div
												class="et_pb_module et_pb_divider et_pb_divider_0 et_pb_divider_position_ et_pb_space">
												<div class="et_pb_divider_internal"></div>
											</div>
										</div>
									</div>
									<div class="et_pb_row et_pb_row_7">
										<div
											class="et_pb_column et_pb_column_4_4 et_pb_column_9  et_pb_css_mix_blend_mode_passthrough et-last-child">
											<div
												class="et_pb_module et_pb_text et_pb_text_6 et_pb_bg_layout_light  et_pb_text_align_left">
												<div class="et_pb_text_inner">
													<h2 id="coaching" style="text-align: center;">
														<strong>Coaching</strong>
													</h2>
													<p>&nbsp;</p>
													<p>
														Students wishing to study abroad need to appear for
														standardized tests like <a
															href="/exams/sat/" target="_blank">SAT</a>,
														<a href="exams/gmat/" target="_blank">GMAT</a>,
														<a href="exams/gre/" target="_blank">GRE</a>,
														<a href="/exams/toefl/"
															target="_blank">TOEFL</a>, <a
															href="/exams/ielts/" target="_blank">IELTS</a>,
														<a href="exams/pte/" target="_blank">PTE</a>.
														Our teaching experts help students gain the required score
														to make it to their dream Universities abroad.
													</p>
												</div>
											</div>
										</div>
									</div>
									<div class="et_pb_bottom_inside_divider"></div>
								</div>
								<div
									class="et_pb_section et_pb_section_5 et_pb_with_background et_section_regular section_has_divider et_pb_bottom_divider et_pb_top_divider">

									<div class="et_pb_row et_pb_row_8 "
										style="text-align: center; display: table; margin: 0 auto">
										<div
											class="et_pb_column et_pb_column_4_4 et_pb_column_10  et_pb_css_mix_blend_mode_passthrough et-last-child">
											<div
												class="et_pb_module et_pb_text et_pb_text_7 et_pb_bg_layout_light  et_pb_text_align_left">
												<div class="et_pb_text_inner" style="padding: 33px;">
													<h2 id="career-confusion-or-confused-a">Career
														Confusion? Or confused about courses after 12th, courses
														after 10th, or even after graduation?</h2>
													<p>
														<span style="color: #000000;">To guide students and
															parents, we conduct career guidance and career
															counselling for College and School students. With the
															increasing number of careers and pathways to work towards
															numerous career options, career planning has gained
															enormous importance right since a student finishes grade
															7. Through standardized career assessment tests and
															in-depth one-to-one counselling, we help parents and
															students make an informed choice about the future course
															and career selection. These exercises are NOT to gauge
															how intelligent or good a student is but are meant to
															help him/her eliminate confusion and doubts, and develop
															a career path which is the most suitable for the future
															both in terms of abilities and interests</span>
													</p>
												</div>
											</div>
											<div
												class="et_pb_button_module_wrapper et_pb_button_0_wrapper  et_pb_module ">
												<a
													class="et_pb_button et_pb_button_know et_pb_bg_layout_light"
													href="/career-testing/">Know more</a>
											</div>
										</div>
									</div>
									<div class="et_pb_bottom_inside_divider"></div>

								</div>
								<div class="et_pb_section et_pb_section_6 et_section_regular">
									<div class="et_pb_row et_pb_row_9">
										<div
											class="et_pb_column et_pb_column_4_4 et_pb_column_11  et_pb_css_mix_blend_mode_passthrough et-last-child">
											<div
												class="et_pb_module et_pb_text et_pb_text_8 et_pb_bg_layout_light  et_pb_text_align_left">
												<div class="et_pb_text_inner">
													<h2 id="to-put-it-simply-our-aim-to-ma"
														style="text-align: center;">
														<strong>To put it simply, our aim to make great
															careers</strong>
													</h2>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div id="what-we-do-accordion-section" class="et_pb_section et_pb_section_7 et_section_regular">
									<div class="et_pb_row et_pb_row_10">
										<div class="et_pb_column et_pb_column_4_4 et_pb_column_12  et_pb_css_mix_blend_mode_passthrough et-last-child">
											<div class="et_pb_module et_pb_text et_pb_text_9 et_pb_bg_layout_light  et_pb_text_align_left">
												<div class="et_pb_text_inner">
													<h2 id="following-is-the-list-of-activ">Following is
														the list of activities – a ‘step by step process’ followed
														by Admitworld to provide complete services and satisfaction to
														the students:</h2>
												</div>
											</div>
											<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

											        <div class="panel panel-default">
											            <div class="panel-heading" role="tab" id="headingOne">
											                <h4 class="panel-title">
											                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											                        <i class="more-less glyphicon glyphicon-plus"></i>
											                        	CAREER COUNSELLING AND ANALYSIS
											                    </a>
											                </h4>
											            </div>
											            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
											                <div class="panel-body">
											                 Principal student dilemmas affecting study decisions
														considering factors as:
														<p></p>
														<ul>
															<li>Academic background</li>
															<li>Future academic plans in terms of course and
																University / College (if any) and any specific
																preferences</li>
															<li>Long-term career plans (if any)</li>
															<li>Opportunities in India as compared to other
																Countries</li>
															<li>Financial ability (budget) and work background</li>
														</ul>
														<p>Students are many a times unaware about the
															existing opportunities in India. All relevant factors
															including the above mentioned are considered and
															discussed upon to arrive at a decision challenging the
															viability of studying abroad as compared to considering
															the same in India.</p>
											                </div>
											            </div>
											        </div>
											
											        <div class="panel panel-default">
											            <div class="panel-heading" role="tab" id="headingTwo">
											                <h4 class="panel-title">
											                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
											                        <i class="more-less glyphicon glyphicon-plus"></i>
											                         INFORMATION AND
															DECISION MAKING (SELECTION OF RIGHT MIX - COURSE,
															UNIVERSITY AND COUNTRY)
											                    </a>
											                </h4>
											            </div>
											            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
											                <div class="panel-body">
											                    Students are assisted by the Admitworld team member in making a
														final choice in terms of the right course and the right
														University / College in a specific Country balancing the
														student’s requirements and the eligibility factor.<br>
														It is significant to understand various offerings of a
														country and University should the student need to be on
														the right path of achieving the long-term goal. Further,
														certain destinations are exceptionally known for their
														education relating to a particular industry for instance
														Switzerland for ‘Hospitality and Tourism’, etc.<br>
														60% of the problem that the students face is the selection
														of the ‘right mix’. Once this is achieved, admissions are
														the responsibility of Admitworld. Students not only save money in
														this process as the applications are only made to specific
														Institutions (considering the application fees that most
														Universities charge) but also save valuable time – perhaps
														a pre-requisite trait for any successful student
											                </div>
											            </div>
											        </div>
											
											        <div class="panel panel-default">
											            <div class="panel-heading" role="tab" id="headingThree">
											                <h4 class="panel-title">
											                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false"
											                      aria-controls="collapseThree">
											                        <i class="more-less glyphicon glyphicon-plus"></i>
											                        ESSAY / SOP EDITING /SCHOLARSHIP ESSAY
											                    </a>
											                </h4>
											            </div>
											            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
											                <div class="panel-body">
											                   Editing essays is one of our fortes. Our team of editors
														who have had over 10 years of editing experience
														brainstorm with the student and helps bring out crisp and
														clear content which is really appreciated by Universities
														while making a final admission decision. Each essay / SOP
														is edited with no limit to the number of iterations.
														<p></p>
														<p>Additionally, Admitworld also helps with selecting the
															right referees, discusses the content a referee could
															write and more.</p>
														<p>Admitworld relishes the work of helping students with
															their scholarship essays in order to improve the chance
															of gaining some crucial funding.</p>
											                </div>
											            </div>
											        </div>
											        
											        
											        
											         <div class="panel panel-default">
											            <div class="panel-heading" role="tab" id="headingfour">
											                <h4 class="panel-title">
											                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsefour" aria-expanded="false"
											                      aria-controls="collapsefour">
											                        <i class="more-less glyphicon glyphicon-plus"></i>
											                        DOCUMENT PREPARATION,
														APPLICATION PROCESSING AND ADMISSION AT THE SELECTED
														UNIVERSITY
											                    </a>
											                </h4>
											            </div>
											            <div id="collapsefour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingfour">
											                <div class="panel-body">
											                 
														<p>&nbsp;</p>
														<p>A good application with all the required details
															and documentation:</p>
														<p>
															1) Creates a positive impact on the Institution, thereby
															increasing the prospect of securing admission and<br>
															2) Also marginally reduces the inconvenience that might be
															caused to the University / College on account of reasons
															as missing documents, incomplete application, etc.
														</p>
														<p>However, the students are often unaware about the
															application procedure and the documentation to be
															submitted. Admitworld team member assists all the students with
															the precise documentation that is required to be
															submitted along with the application forms. Admitworld team
															keeps regular contact with the Universities / Colleges
															regarding the status and progress of students’
															applications. Therefore, Admitworld students are relieved of the
															follow-up activity.</p>
														<p>Student could leverage the expertise of Admitworld team
															members to give them ‘the edge’ in this extremely
															competitive admissions process. Admitworld team members will
															assist the students edit their ‘essays / statement of
															purpose’ and provide insights on just the right
															constituents that make documents unique and personal. It
															is rather significant to note that the visa officer
															rightly needs to review all of the students’ documents
															(academic and financial), thereby making the
															documentation all the more significant.</p>
														<p style="border: 1px solid red; padding: 20px;">
															Admitworld also sends its ‘recommendations’ highlighting
															individual students’ strengths, explaining reasons for a
															student to be granted an admission. Universities in
															general consider this in their decision. Some
															Universities request for consultant’s confidential
															assessment of the applicant / student. English language
															tests (<a href="/exams/ielts/"
																target="_blank">IELTS</a> / <a
																href="exams/toefl/" target="_blank">TOEFL</a>)
															may be waived on the basis of satisfactory feedback of
															the student by the consultant
														</p>
											                </div>
											            </div>
											        </div>
											         <div class="panel panel-default">
											            <div class="panel-heading" role="tab" id="headingfive">
											                <h4 class="panel-title">
											                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsefive" aria-expanded="false"
											                      aria-controls="collapsefive">
											                        <i class="more-less glyphicon glyphicon-plus"></i>
											                       FINANCIAL AID /SCHOLARSHIP APPLICATION
											                    </a>
											                </h4>
											            </div>
											            <div id="collapsefive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingfive">
											                <div class="panel-body">
											                   Admitworld keeps a track of various funding and scholarship
														opportunities which is shared with the students. Admitworld helps
														with making the scholarship application and/or editing of
														scholarship essays.
														<p></p>
														<p>Nearly 70% of our students would receive some kind
															of funding from a foreign University. We have had many
															students in the past who have received complete financial
															aid (zero tuition fee).</p>
														<p>We love it when YOU get merit scholarships!</p>
											                </div>
											            </div>
											        </div>
											        <div class="panel panel-default">
											            <div class="panel-heading" role="tab" id="headingsix">
											                <h4 class="panel-title">
											                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsesix" aria-expanded="false"
											                      aria-controls="collapsesix">
											                        <i class="more-less glyphicon glyphicon-plus"></i>
											                       VISA PROCEDURE AND DOCUMENTATION
											                    </a>
											                </h4>
											            </div>
											            <div id="collapsesix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingsix">
											                <div class="panel-body">
											                 <p>
															
														</p>
														<p>Once the student has received an I20 or admissions
															offer letter from the University, Admitworld details its
															students with the visa procedure to be followed in the
															country and guides them in preparing the various
															documents required for obtaining a valid student visa.</p>
														<p>Admitworld also counsels the students for their visa
															interview through mock interview sessions. With regular
															research on the different visa procedures and not
															underestimating the reviews of other students, Admitworld is in
															a better situation to guide the students at all stages.</p>
														<p>Admitworld also assists in the booking of visa
															appointment, arranging of financial &amp; other
															documentation, etc. so as to increase the chance of the
															visa</p>
											                </div>
											            </div>
											        </div>
											        
											        
											        
											         <div class="panel panel-default">
											            <div class="panel-heading" role="tab" id="headingseven">
											                <h4 class="panel-title">
											                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseseven" aria-expanded="false"
											                      aria-controls="collapseseven">
											                        <i class="more-less glyphicon glyphicon-plus"></i>
											                        BANK LOAN ASSISTANCE
											                    </a>
											                </h4>
											            </div>
											            <div id="collapseseven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingseven">
											                <div class="panel-body">
											                 
														<p>&nbsp;</p>
														<p>Admitworld follows a list of nationalized banks offering
															bank loans at reasonable rates. Admitworld assists its students
															with the entire procedure, starting from application to
															the required documentation, eligibility criteria and the
															selection of bank</p>
											                </div>
											            </div>
											        </div>
											         <div class="panel panel-default">
											            <div class="panel-heading" role="tab" id="headingeight">
											                <h4 class="panel-title">
											                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseeight" aria-expanded="false"
											                      aria-controls="collapseeight">
											                        <i class="more-less glyphicon glyphicon-plus"></i>
											                        ACCOMMODATION (LIVING
														IN A FOREIGN COUNTRY)
											                    </a>
											                </h4>
											            </div>
											            <div id="collapseeight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingeight">
											                <div class="panel-body">
											                  
														<p>&nbsp;</p>
														<p>A question that most parents wish to be answered!</p>
														<p>Admitworld provides detailed information to the students
															with respect to their University accommodation booking
															and payment; in turn ensuring the students’ safety in an
															international country</p>
											                </div>
											            </div>
											        </div>
											         <div class="panel panel-default">
											            <div class="panel-heading" role="tab" id="headingnine">
											                <h4 class="panel-title">
											                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsenine" aria-expanded="false"
											                      aria-controls="collapsenine">
											                        <i class="more-less glyphicon glyphicon-plus"></i>
											                        VALUE-ADDED SERVICES
											                    </a>
											                </h4>
											            </div>
											            <div id="collapsenine" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingnine">
											                <div class="panel-body">
											                   Edi<p>
															<strong>Networking:</strong> Admitworld gets you in touch with
															other students going to the same country or university.
															It is always great to plan together and have a company
															while travelling
														</p>
														<p>
															<strong>Pre-departure Briefing:</strong> Admitworld shares
															useful information with students about what to do before
															leaving India, what to expect when you reach a new land
															and more eg. Amount of forex to be bought, insurance and
															medical advice, opening a bank account in a new country,
															life and living in a new country and much more
														</p>
														<p>
															<strong>Foreign Exchange Services:</strong> Admitworld has
															agreements with leading foreign exchange services which
															offer a discounted exchange rate on currencies, drafts,
															etc. The travel insurance and a whole lot of other
															benefits (value added services) are made available to the
															students
														</p>
														<p>
															<strong>Airline Ticketing:</strong> Admitworld tries to work out
															the most reasonable rates with reputed travel agencies so
															as to reduce the expenses of the students wherever
															possible
														</p>
											                </div>
											            </div>
											        </div>
											        <div class="panel panel-default">
											            <div class="panel-heading" role="tab" id="headingten">
											                <h4 class="panel-title">
											                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseten" aria-expanded="false"
											                      aria-controls="collapseten">
											                        <i class="more-less glyphicon glyphicon-plus"></i>
											                       STAY CONNECTED
											                    </a>
											                </h4>
											            </div>
											            <div id="collapseten" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingten">
											                <div class="panel-body">
											                <p>This is the key. We keep in touch with our
															students. We learn about their experiences or keep
															helping them as much in our capacity even when they are
															abroad</p>
														<p>
															<span>&nbsp;</span>
														</p>
											                </div>
											            </div>
											        </div>
											   </div><!-- panel-group -->
                                       
                                       </div>
								</div>
							</div>
						</div>

                    </div>
				</div>
			</div>
		</div>
	</div>
	</article>
	
	</div>
	</div>
	<jsp:include page="commonfooter.jsp" />
	<style>
.et_pb_section_0.et_pb_section {
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px
}

.et_pb_button_know {
	color: #ffffff !important;
	border-width: 0px !important;
	font-size: 16px;
	background-color: #fdc735 !important;
}

.et_pb_divider_0 {
	height: 0px
}

.et_pb_divider_0:before {
	border-top-color: #7EBEC5
}

.et_pb_divider_0:hover:before {
	border-top-width: px
}

.et_pb_fullwidth_post_title_0 {
	min-height: 400px
}

.et_pb_text_6 {
	padding-right: 20px !important;
	padding-left: 20px !important
}

.et_pb_section_5.et_pb_section {
	padding-top: 20px;
	padding-bottom: 100px;
	background-color: #fdc735 !important
}

.et_pb_section_5.section_has_divider.et_pb_bottom_divider .et_pb_bottom_inside_divider
	{
	background-image:
		url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDBweCIgdmlld0JveD0iMCAwIDEyODAgMTQwIiBwcmVzZXJ2ZUFzcGVjdFJhdGlvPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxnIGZpbGw9IiNmZmZmZmYiPjxwYXRoIGQ9Ik02NDAgMTM5TDAgMHYxNDBoMTI4MFYwTDY0MCAxMzl6Ii8+PC9nPjwvc3ZnPg==);
	background-size: 100% 100px;
	bottom: 0;
	height: 100px;
	z-index: 1
}

.et_pb_row_8 {
	background-color: #ffffff;
	box-shadow: 0px 2px 18px 0px rgba(0, 0, 0, 0.3)
}

.et_pb_row_8.et_pb_row {
	padding-top: 20px !important;
	padding-right: 20px !important;
	padding-bottom: 20px !important;
	padding-top: 20px;
	padding-right: 20px;
	padding-bottom: 20px;
	padding-left: 20px
}

.et_pb_text_7 h2 {
	line-height: 1.2em
}

body #page-container .et_pb_section .et_pb_button_0, body #page-container .et_pb_section .et_pb_button_0:hover
	{
	padding: 0.3em 1em !important
}

.et_pb_text_5 h3 {
	line-height: 1.2em
}

body #page-container .et_pb_section .et_pb_button_0:before, body #page-container .et_pb_section .et_pb_button_0:after
	{
	display: none !important
}

.et_pb_button_0, .et_pb_button_0:after {
	transition: all 300ms ease 0ms
}

.et_pb_text_9 h2 {
	line-height: 1.2em
}

.et_pb_accordion_0.et_pb_accordion h5.et_pb_toggle_title,
	.et_pb_accordion_0.et_pb_accordion h1.et_pb_toggle_title,
	.et_pb_accordion_0.et_pb_accordion h2.et_pb_toggle_title,
	.et_pb_accordion_0.et_pb_accordion h3.et_pb_toggle_title,
	.et_pb_accordion_0.et_pb_accordion h4.et_pb_toggle_title,
	.et_pb_accordion_0.et_pb_accordion h6.et_pb_toggle_title {
	font-size: 20px
}

.et_pb_accordion_0.et_pb_accordion .et_pb_accordion_item {
	border-color: #fdc735
}

.et_pb_accordion_0 .et_pb_toggle_open {
	background-color: #ffffff
}

.et_pb_accordion_0 .et_pb_toggle_close {
	background-color: #fdc735
}

.et_pb_accordion_0.et_pb_accordion .et_pb_toggle_close h5.et_pb_toggle_title,
	.et_pb_accordion_0.et_pb_accordion .et_pb_toggle_close h1.et_pb_toggle_title,
	.et_pb_accordion_0.et_pb_accordion .et_pb_toggle_close h2.et_pb_toggle_title,
	.et_pb_accordion_0.et_pb_accordion .et_pb_toggle_close h3.et_pb_toggle_title,
	.et_pb_accordion_0.et_pb_accordion .et_pb_toggle_close h4.et_pb_toggle_title,
	.et_pb_accordion_0.et_pb_accordion .et_pb_toggle_close h6.et_pb_toggle_title
	{
	color: #000000 !important
}

.et_pb_section_8.et_pb_section {
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px
}

.et_pb_section_9.et_pb_section {
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px
}

.et_pb_row_11.et_pb_row {
	padding-top: 0px !important;
	padding-right: 0px !important;
	padding-bottom: 0px !important;
	padding-left: 0px !important;
	margin-top: 0px !important;
	margin-right: 0px !important;
	margin-bottom: 0px !important;
	margin-left: 0px !important;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px
}

.et_pb_text_5 {
	padding-right: 20px !important;
	padding-left: 20px !important
}

.et_pb_text_6 h3 {
	line-height: 1.2em
}

.et_pb_text_10 {
	padding-top: 0px !important;
	padding-right: 0px !important;
	padding-bottom: 0px !important;
	padding-left: 0px !important;
	margin-top: 0px !important;
	margin-right: 0px !important;
	margin-bottom: 0px !important;
	margin-left: 0px !important
}

.et_pb_text_0 h1 {
	font-size: 24px
}

.et_pb_section_4.section_has_divider.et_pb_top_divider .et_pb_top_inside_divider
	{
	background-image:
		url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDBweCIgdmlld0JveD0iMCAwIDEyODAgMTQwIiBwcmVzZXJ2ZUFzcGVjdFJhdGlvPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxnIGZpbGw9IiNmZmZmZmYiPjxwYXRoIGQ9Ik0xMjgwIDBMNjQwIDcwIDAgMHYxNDBsNjQwLTcwIDY0MCA3MFYweiIgZmlsbC1vcGFjaXR5PSIuNSIvPjxwYXRoIGQ9Ik0xMjgwIDBIMGw2NDAgNzAgNjQwLTcweiIvPjwvZz48L3N2Zz4=);
	background-size: 100% 100px;
	top: 0;
	height: 100px;
	z-index: 1
}

.et_pb_section_2.section_has_divider.et_pb_bottom_divider .et_pb_bottom_inside_divider
	{
	background-image:
		url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDBweCIgdmlld0JveD0iMCAwIDEyODAgMTQwIiBwcmVzZXJ2ZUFzcGVjdFJhdGlvPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxnIGZpbGw9IiNmZmZmZmYiPjxwYXRoIGQ9Ik0wIDE0MGgxMjgwQzU3My4wOCAxNDAgMCAwIDAgMHoiIGZpbGwtb3BhY2l0eT0iLjMiLz48cGF0aCBkPSJNMCAxNDBoMTI4MEM1NzMuMDggMTQwIDAgMzAgMCAzMHoiIGZpbGwtb3BhY2l0eT0iLjUiLz48cGF0aCBkPSJNMCAxNDBoMTI4MEM1NzMuMDggMTQwIDAgNjAgMCA2MHoiLz48L2c+PC9zdmc+);
	background-size: 100% 100px;
	bottom: 0;
	height: 100px;
	z-index: 1;
	transform: rotateY(180deg)
}

.et_pb_section_2.et_pb_section {
	background-color: #0c4da2 !important
}

.et_pb_text_2.et_pb_text {
	color: #ffffff !important
}

.et_pb_text_2 h1 {
	color: #ffffff !important
}

.et_pb_text_2 h2 {
	font-size: 28px;
	text-align: center
}

.et_pb_text_3 {
	width: 80%;
	max-width: 1080px
}

.et_pb_text_0 h2 {
	font-size: 55px;
	line-height: 1.2em
}

.et_pb_text_0 {
	padding-right: 20px !important;
	padding-left: 20px !important
}

.et_pb_blurb_0.et_pb_blurb {
	border-width: 1px;
	border-color: #0c4da2;
	padding-top: 20px !important;
	padding-right: 20px !important;
	padding-bottom: 20px !important;
	padding-left: 20px !important
}

.et_pb_blurb_0 .et-pb-icon {
	color: #0c4da2
}

.et_pb_blurb_1.et_pb_blurb {
	border-width: 1px;
	border-color: #0c4da2;
	padding-top: 20px !important;
	padding-right: 20px !important;
	padding-bottom: 20px !important;
	padding-left: 20px !important
}

.et_pb_section_1.section_has_divider.et_pb_bottom_divider .et_pb_bottom_inside_divider
	{
	background-image:
		url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDBweCIgdmlld0JveD0iMCAwIDEyODAgMTQwIiBwcmVzZXJ2ZUFzcGVjdFJhdGlvPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxnIGZpbGw9IiMwYzRkYTIiPjxwYXRoIGQ9Ik0wIDE0MGgxMjgwQzU3My4wOCAxNDAgMCAwIDAgMHoiIGZpbGwtb3BhY2l0eT0iLjMiLz48cGF0aCBkPSJNMCAxNDBoMTI4MEM1NzMuMDggMTQwIDAgMzAgMCAzMHoiIGZpbGwtb3BhY2l0eT0iLjUiLz48cGF0aCBkPSJNMCAxNDBoMTI4MEM1NzMuMDggMTQwIDAgNjAgMCA2MHoiLz48L2c+PC9zdmc+);
	background-size: 100% 100px;
	bottom: 0;
	height: 100px;
	z-index: 1
}

.et_pb_blurb_1 .et-pb-icon {
	color: #0c4da2
}

.et_pb_section_4.et_pb_section {
	padding-top: 120px;
	padding-bottom: 120px;
	background-color: #eeeeee !important
}

.et_pb_section_4.section_has_divider.et_pb_bottom_divider .et_pb_bottom_inside_divider
	{
	background-image:
		url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDBweCIgdmlld0JveD0iMCAwIDEyODAgMTQwIiBwcmVzZXJ2ZUFzcGVjdFJhdGlvPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxnIGZpbGw9IiNmZGM3MzUiPjxwYXRoIGQ9Ik0wIDE0MGw2NDAtNzAgNjQwIDcwVjBMNjQwIDcwIDAgMHYxNDB6IiBmaWxsLW9wYWNpdHk9Ii41Ii8+PHBhdGggZD0iTTAgMTQwaDEyODBMNjQwIDcwIDAgMTQweiIvPjwvZz48L3N2Zz4=);
	background-size: 100% 100px;
	bottom: 0;
	height: 100px;
	z-index: 1
}

.et_pb_accordion_item_5 {
	text-align: left
}

.et_pb_column_0 {
	z-index: 9;
	position: relative
}

.et_pb_column_1 {
	z-index: 9;
	position: relative
}

.et_pb_column_13 {
	z-index: 9;
	position: relative
}

.et_pb_accordion_item_9 {
	text-align: left
}

.et_pb_accordion_item_8 {
	text-align: left
}

.et_pb_accordion_item_7 {
	text-align: left
}

.et_pb_accordion_item_6 {
	text-align: left
}

.et_pb_column_7 {
	z-index: 9;
	position: relative
}

.et_pb_accordion_item_4 {
	text-align: left
}

.et_pb_accordion_item_3 {
	text-align: left
}

.et_pb_accordion_item_2 {
	text-align: left
}

.et_pb_accordion_item_1 {
	text-align: left
}

.et_pb_accordion_item_0 {
	text-align: left
}

.et_pb_column_12 {
	z-index: 9;
	position: relative
}

.et_pb_column_11 {
	z-index: 9;
	position: relative
}

.et_pb_column_3 {
	z-index: 9;
	position: relative
}

.et_pb_column_10 {
	z-index: 9;
	position: relative
}

.et_pb_column_4 {
	z-index: 9;
	position: relative
}

.et_pb_column_5 {
	z-index: 9;
	position: relative
}

.et_pb_column_6 {
	z-index: 9;
	position: relative
}

.et_pb_column_9 {
	z-index: 9;
	position: relative
}

.et_pb_column_8 {
	z-index: 9;
	position: relative
}

.et_pb_column_2 {
	z-index: 9;
	position: relative
}

@media only screen and (max-width:980px) {
	body #page-container .et_pb_section .et_pb_button_0 {
		padding-left: 1em;
		padding-right: 1em
	}
	body #page-container .et_pb_section .et_pb_button_0:hover {
		padding-left: 0.7em;
		padding-right: 2em
	}
}

@media only screen and (max-width:767px) {
	body #page-container .et_pb_section .et_pb_button_0 {
		padding-left: 1em;
		padding-right: 1em
	}
	body #page-container .et_pb_section .et_pb_button_0:hover {
		padding-left: 0.7em;
		padding-right: 2em
	}
}
</
styl
</style>
</body>
</html>
