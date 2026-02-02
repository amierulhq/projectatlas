<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Appointment $appointment
 * @var \Cake\Collection\CollectionInterface|string[] $lecturers
 * @var \Cake\Collection\CollectionInterface|string[] $subjects
 * @var \Cake\Collection\CollectionInterface|string[] $semesters
 */
?>
<!--Header-->
<div class="row text-body-secondary">
	<div class="col-10">
        <h1 class="my-0 page_title">Add New Appointment (Letter Details)</h1>
		<h6 class="sub_title text-body-secondary"><?php echo $system_name; ?></h6>
	</div>
	<div class="col-2 text-end">
		<div class="dropdown mx-3 mt-2">
			<button class="btn p-0 border-0" type="button" id="orederStatistics" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			<i class="fa-solid fa-bars text-primary"></i>
			</button>
				<div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
            <?= $this->Html->link(__('List Appointments'), ['action' => 'index'], ['class' => 'dropdown-item', 'escapeTitle' => false]) ?>
				</div>
		</div>
    </div>
</div>
<div class="line mb-4"></div>
<!--/Header-->

<div class="row">
    <div class="col-md-3">
        <div class="card shadow border-0 bg-body-tertiary">
            <div class="card-body justify">
                <div class="card_title">Admin's Instruction</div>
                <div class="tricolor_line mb-3"></div>
                This page allows admins to <b>Create, Review and Manage Official Academic Letters</b>. Please ensure that all information is accurate before generating any letter before proceed to Faculty Dean's approval.
                <br></br>    
					<ul>
                        <li><b>Important !</b></li>
						<p>The approval name is fixed and automatically assigned to the Faculty Dean.</p>
                    </ul>
                    Ensure all required fields are completed before proceeding. Click <b>Submit</b> to proceed.
            </div>
        </div>
    </div>

    <div class="col-md-9">
        <div class="card shadow border-0 bg-body-tertiary">
            <div class="card-body">
                    <?= $this->Form->create($appointment) ?>
                    <fieldset>

                    <div class="row">

                        <div class="col-md-4">
                            <?php echo $this->Form->control('lecturer_id', [
                                    'options' => $lecturers,
                                    'class'=>'from-control form-select',
                                    'empty'=>'Select Lecturer'
                                ]); ?>
                        </div>

                        <div class="col-md-4">
                            <?php echo $this->Form->control('subject_id', [
                                    'options' => $subjects,
                                    'class'=>'from-control form-select',
                                    'empty'=>'Select Subject'
                                ]); ?>
                        </div>

                        <div class="col-md-4">
                            <?php echo $this->Form->control('semester_id', [
                                    'options' => $semesters,
                                    'class'=>'from-control form-select',
                                    'empty'=>'Select Semester'
                                ]); ?>
                        </div>

                        <div class="col-md-4">
                            <?php echo $this->Form->control('start_date'); ?>
                        </div>
                        
                        <div class="col-md-4">
                            <?php echo $this->Form->control('end_date'); ?>
                        </div>

                        <div class="col-md-4">
                            <?php
                            // Hidden field to submit the value (status = 1)
                            echo $this->Form->hidden('status', ['value' => 1]);

                            // Readonly input just to display "Pending" to user
                            echo $this->Form->control('status_display', [
                                'label' => 'Status',
                                'value' => 'Pending',
                                'readonly' => true,
                                'class' => 'form-control',
                            ]);
                            ?>
                        </div>

                        <div class="col-md-6">
                            <?php echo $this->Form->control('location'); ?>
                        </div>
                        
                        <div class="col-md-6">
                            <?php echo $this->Form->control('reference_no'); ?>
                        </div>

                        <div class="col-md-6">
                            <?php echo $this->Form->control('approval_no'); ?>
                        </div>

                        <div class="col-md-6">
                            <?php echo $this->Form->control('approval_name', [
                                'value' => 'Assoc. Prof. Dr Norhayati Hussin',
                                'readonly' => true,
                                'class' => 'form-control'
                            ]); ?>
                        </div>

                        <div class="col-md-6">
                            <?php echo $this->Form->control('approval_post', [
                                'value' => 'Dekan',
                                'readonly' => true,
                                'class' => 'form-control'
                            ]); ?>
                        </div>

                         <div class="col-md-6">
                            <?php echo $this->Form->control('date'); ?>
                        </div>
                    </div>


            </fieldset>
				<div class="text-end">
				  <?= $this->Form->button('Reset', ['type' => 'reset', 'class' => 'btn btn-outline-warning']); ?>
				  <?= $this->Form->button(__('Submit'),['type' => 'submit', 'class' => 'btn btn-outline-primary']) ?>
                </div>
        <?= $this->Form->end() ?>
            </div>
        </div>
    </div>
</div>