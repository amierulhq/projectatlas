<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Lecturer $lecturer
 */
?>
<!--Header-->
<div class="row text-body-secondary">
	<div class="col-10">
		<h1 class="my-0 page_title">Add New Lecturer</h1>
		<h6 class="sub_title text-body-secondary"><?php echo $system_name; ?></h6>
	</div>
	<div class="col-2 text-end">
		<div class="dropdown mx-3 mt-2">
			<button class="btn p-0 border-0" type="button" id="orederStatistics" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			<i class="fa-solid fa-bars text-primary"></i>
			</button>
				<div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
            <?= $this->Html->link(__('List Lecturers'), ['action' => 'index'], ['class' => 'dropdown-item', 'escapeTitle' => false]) ?>
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
                Please complete all required fields to add a <b>New Lecturer</b> to the system. Ensure that the lecturer information entered is accurate to support academic administration and the generation of teaching instruction letters.
                <br></br>    
					<ul>
                        <li><b>Lecturer Name</b></li>
						<p>Enter the full name of the lecturer.
						(e.g. Dr. Muhammad Amierul Haqeem bin Mohd Faizan)</p>
                    </ul>
					<ul>
                        <li><b>Staff No.</b></li>
						<p>Enter the official staff ID.
						(e.g. 261677)</p>
                    </ul>
					<ul>
                        <li><b>Phone No.</b></li>
						<p>Enter a valid phone number and without - symbols.
						(e.g. 0112463639)</p>
                    </ul>
					<ul>
                        <li><b>Email</b></li>
						<p>Enter a valid email account of the lecturer.
						(e.g. amierulhq@gmail.com)</p>
                    </ul>
					<ul>
                        <li><b>Status</b></li>
						<p>Select the lecturer status.
						(e.g. Active)</p>
                    </ul>
                    After completing all fields, click <b>Submit</b> to register the new lecturer in the system.
            </div>
        </div>
    </div>

    <div class="col-md-9">
        <div class="card shadow border-0 bg-body-tertiary">
            <div class="card-body">
                    <?= $this->Form->create($lecturer) ?>
                    <fieldset>

                    <div class="row">
                        <div class="col-md-6">
                        <?php echo $this->Form->control('salution', [
                            'options' => [
                                    'Encik' => 'Encik',
                                    'Puan' => 'Puan',
                                    'Cik' => 'Cik',
                            ],
                            'class' => 'form-control form-select',
                            'empty' => 'Select Salutation'
                        ]
                        ); ?>
                        </div>

                        <div class="col-md-6">
                            <?php echo $this->Form->control('name'); ?>
                        </div>

                        <div class="col-md-6">
                            <?php echo $this->Form->control('staff_no'); ?>
                        </div>

                        <div class="col-md-6">
                            <?php echo $this->Form->control('phone'); ?>
                        </div>

                        <div class="col-md-6">
                            <?php echo $this->Form->control('email'); ?>
                        </div>

                        <div class="col-md-6">
                            <?php echo $this->Form->control('status',[
                                                'options' => [
                                                    '1'=>'Active',
                                                    '2'=>'Inactive',
                                                    '3'=>'On Leave'
                                                ],
                                                'empty' => 'Select Status',
                                                'class' => 'form-control form-select'
                                            ]); ?>
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