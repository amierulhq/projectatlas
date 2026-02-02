<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Subject $subject
 */
?>
<!--Header-->
<div class="row text-body-secondary">
	<div class="col-10">
		<h1 class="my-0 page_title">Add New Subject</h1>
		<h6 class="sub_title text-body-secondary"><?php echo $system_name; ?></h6>
	</div>
	<div class="col-2 text-end">
		<div class="dropdown mx-3 mt-2">
			<button class="btn p-0 border-0" type="button" id="orederStatistics" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			<i class="fa-solid fa-bars text-primary"></i>
			</button>
				<div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
            <?= $this->Html->link(__('List Subjects'), ['action' => 'index'], ['class' => 'dropdown-item', 'escapeTitle' => false]) ?>
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
                Please complete all required fields to add a <b>New Subjects</b>. Ensure that the information entered is accurate to support academic management and the generation of teaching instruction letters.
                <br></br>    
					<ul>
                        <li><b>Subject Name</b></li>
						<p>Enter the full subject.
						(e.g. User Experience Design)</p>
                    </ul>
					<ul>
                        <li><b>Semester Code</b></li>
						<p>Enter the official subject code.
						(e.g. IMS564)</p>
                    </ul>
					<ul>
                        <li><b>Semester Credit Hours</b></li>
						<p>Select the total credit hours for the subject.
						(e.g. 3.0)</p>
                    </ul>
					<ul>
                        <li><b>Semester Status</b></li>
						<p>Select the subject status.
						(e.g. Active)</p>
                    </ul>
                    All completing all fields, click <b>Submit</b> to register the new subject in the system.
            </div>
        </div>
    </div>

    <div class="col-md-9">
        <div class="card shadow border-0 bg-body-tertiary">
            <div class="card-body">
                    <?= $this->Form->create($subject) ?>
                    <fieldset>

                    	<div class="row">
							<div class="col-md-12">
								<?php echo $this->Form->control('name'); ?>
							</div>

							<div class="col-md-12">
								<?php echo $this->Form->control('code'); ?>
							</div>

							<div class="col-md-6">
								<?php echo $this->Form->control('credit_hour',[
													'options' => [
														'1.0'=>'1.0',
														'2.0'=>'2.0',
														'3.0'=>'3.0',
														'4.0'=>'4.0'
													],
													'empty' => 'Select Credit Hour',
													'class' => 'form-control form-select'
												]); ?>
							</div>

							<div class="col-md-6">
								<?php echo $this->Form->control('status',[
													'options' => [
														'1'=>'Active',
														'2'=>'Inactive',
														'3'=>'Under Development'
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