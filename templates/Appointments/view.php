<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Appointment $appointment
 */
?>
<!--Header-->
<div class="row text-body-secondary">
	<div class="col-10">
		<h1 class="my-0 page_title">Correspondence/Letter's Details</h1>
		<h6 class="sub_title text-body-secondary"><?php echo $system_name; ?></h6>
	</div>
	<div class="col-2 text-end">
		<div class="dropdown mx-3 mt-2">
			<button class="btn p-0 border-0" type="button" id="orederStatistics" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			<i class="fa-solid fa-bars text-primary"></i>
			</button>
				<div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
							<li><?= $this->Html->link(__('Edit Appointment'), ['action' => 'edit', $appointment->id], ['class' => 'dropdown-item', 'escapeTitle' => false]) ?></li>
				<li><?= $this->Form->postLink(__('Delete Appointment'), ['action' => 'delete', $appointment->id], ['confirm' => __('Are you sure you want to delete # {0}?', $appointment->id), 'class' => 'dropdown-item', 'escapeTitle' => false]) ?></li>
				<li><hr class="dropdown-divider"></li>
				<li><?= $this->Html->link(__('List Appointments'), ['action' => 'index'], ['class' => 'dropdown-item', 'escapeTitle' => false]) ?></li>
				<li><?= $this->Html->link(__('New Appointment'), ['action' => 'add'], ['class' => 'dropdown-item', 'escapeTitle' => false]) ?></li>
							</div>
		</div>
    </div>
</div>
<div class="line mb-4"></div>
<!--/Header-->

<?php
function formatMalayDate($date) {
    $months = [
        '01' => 'Januari', '02' => 'Februari', '03' => 'Mac', '04' => 'April',
        '05' => 'Mei', '06' => 'Jun', '07' => 'Julai', '08' => 'Ogos',
        '09' => 'September', '10' => 'Oktober', '11' => 'November', '12' => 'Disember'
    ];
    $timestamp = strtotime($date);
    $day = date('j', $timestamp);
    $month = $months[date('m', $timestamp)];
    $year = date('Y', $timestamp);
    return "$day $month $year";
}
?>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const approvalSelect = document.getElementById("approval-status");
        const downloadBtn = document.getElementById("download-pdf-btn");
        const approvalDetails = document.getElementById("approval-details");

        approvalSelect.addEventListener("change", function () {
            if (this.value === "Approved") {
                downloadBtn.disabled = false;
                approvalDetails.style.display = "block";
            } else if (this.value === "Rejected") {
                downloadBtn.disabled = true;
                approvalDetails.style.display = "none";
            } else {
                downloadBtn.disabled = true;
                approvalDetails.style.display = "none";
            }
        });

        // Initial state
        if (approvalSelect.value === "Approved") {
            downloadBtn.disabled = false;
            approvalDetails.style.display = "block";
        } else {
            downloadBtn.disabled = true;
            approvalDetails.style.display = "none";
        }
    });
</script>

<style>
    .light{
        background-color: #ffffff;
        color: #000000;
    }
        @page{
            margin: 0px 0px 0px 0px !important;
            padding: 0px 0px 0px 0px !important;
        }

        body{
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
        }

        .justify {
        text-align: justify;
        }
</style>

<div class="row">
  <div class="col-md-9">
    <div class="card rounded-0 mb-3 light border-0 shadow justify">
        <?php echo $this->Html->image('headerUiTM.png',['width'=>'100%']); ?>
        <div class="card-body px-0">
            <table border="0" class="text-end mt-3 mb-3 mx-5">
                <tr>
                    <td width="50%">No. Rujukan</td>
                    <td width="1%">:</td>
                    <td width="10%">
                        <?= h($appointment->approval_status == 1 ? $appointment->reference_no : 'Diproses') ?>
                    </td>
                </tr>
                <tr>
                    <td>Tarikh</td>
                    <td>:</td>
                    <td>
                        <?= h($appointment->approval_status == 1 ? formatMalayDate($appointment->date) : 'Diproses') ?>
                    </td>
                </tr>
            </table>

        <div class="mx-5 justify">
            <div class="fw-bold capital">
            <?php echo ($appointment->lecturer->name); ?></div>
            Pensyarah Kanan <br/>
            Fakulti Sains Maklumat <br/>
            UiTM Cawangan Selangor </br>
            Kampus Puncak Perdana<br/>
            40150 Shah Alam<br/>
            Selangor.
            <br/><br/>

            Assalammualaikum W.B.T
            <br/><br/>

            Tuan/Puan,
            <br/><br/>

            <style>
                .capital{
                    text-transform: uppercase;
                }
            </style>

            <div class="fw-bold capital mb-4">
                ARAHAN MENGAJAR BAGI SEMESTER <?php echo ($appointment->semester->name); ?> PROGRAM SARJANA MUDA SAINS MAKLUMAT (KEPUJIAN) PENGURUSAN SISTEM MAKLUMAT (CDIM262)
                <br/>
            </div>

            Dengan hormatnya perkara di atas adalah dirujuk.
            <br/><br/>

            2. Dimaklumkan bahawa pihak Fakulti Sains Maklumat UiTM Cawangan Selangor Kampus Puncak Perdana dengan ini mengarahkan Tuan/Puan untuk melaksanakan tugas pengajaran bagi kursus dan tarikh seperti berikut; 
            <br/><br/>

            <div class="fw-bold capital mb-4">
                <table border="0" class="text-start mt-3 mb-3">
                    <tr>
                        <td width="0%">KOD KURSUS</td>
                        <td width="0%">:</td>
                        <td width="0%"><?php echo ($appointment->subject->code); ?></td>
                    </tr>
                    <tr>
                        <td>NAMA KURSUS</td>
                        <td>:</td>
                        <td><?php echo ($appointment->subject->name); ?></td>
                    </tr>
                </table>
            </div>

            3. Arahan ini akan berkuatkuasa pada tarikh bermula semester iaitu pada <b><span class="text-uppercase"><?= formatMalayDate($appointment->start_date); ?></span></b>
            sehingga <b><span class="text-uppercase"><?= formatMalayDate($appointment->end_date); ?></span></b>. Tuan/Puan dikehendaki melaksanakan tugas pengajaran tersebut sepanjang semester berkenaan dan memastikan semua keperluan akademik
            dipatuhi, termasuk kehadiran pelajar serta memaksimumkan bilangan atau jumlah jam kredit bagi subjek yang tertera.
            <br/><br/>

            4. Pihak Fakulti Sains Maklumat amat menghargai kerjasama dan komitmen Tuan/Puan dalam memastikan kelancaran proses pengajaran dan pembelajaran.
            <br/><br/>

            5. Sehubungan dengan itu, Tuan/Puan boleh menghubungi Pejabat AM Fakulti Sains Maklumat di talian utama <b>03-3258 4000</b> sekiranya terdapat sebarang permasalahan atau kesulitan mengenai perkara ini.
            <br/><br/>
            <br/><br/>
            <strong>
            <br/>"MALAYSIA MADANI"<br/>
            "BERKHIDMAT UNTUK NEGARA"
            <br/><br/>
            </strong>

            Saya yang menjalankan amanah,
            <br/><br/><br/>

            <strong><?php echo ($appointment->approval_name); ?></strong><br/>
            <?php echo ($appointment->approval_post); ?> <br/>
            Fakulti Sains Maklumat<br/>
            <br/><br/>
            <center><b><i>[SURAT INI ADALAH CETAKAN KOMPUTER DAN TIDAK PERLU DITANDATANGANI]</i></b></center>
            <br/><br/>
            <?php echo $this->Html->image('footerUiTM.png',['width'=>'100%']); ?>

            </div>
            </div>
        </div>

	</div>

    <div class="col-md-3">
        <div class="card bg-body-tertiary">
            <div class="card-body">
                <div class="card-title">Appointment Data</div>
                <div class="tricolor_line mb-3"></div>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <tr>
                            <td>Name</td>
                            <td><?php echo ($appointment->lecturer->name); ?></td>
                        </tr> 
                        <tr>
                            <td>Created</td>
                            <td><?php echo date('d F Y', strtotime
                            ($appointment->created)); ?></td>
                        </tr>
                        <tr>
                            <td>Appointment Status</td>
                            <td>
                                <?php if ($appointment->approval_status == 0){
                                    echo '<span class="badge text-bg-warning">Pending</span>';
                                }else if ($appointment->approval_status == 1){
                                    echo '<span class="badge text-bg-success">Approved</span>';
                                }
                                ?>
                            </td>
                        </tr> 
                    </table>
                    

                   <?php echo $this->Form->create($appointment); ?>

<?php
$isApproved = $appointment->approval_status == 1;
$isRejected = $appointment->approval_status == 2;
?>

<?php if (!$isRejected): // Don't show anything if Rejected ?>
    <div class="mb-1" id="approval_status_container" style="<?= $isApproved ? 'display:none;' : '' ?>">
        <?= $this->Form->control('approval_status', [
            'type' => 'select',
            'options' => [
                '0' => 'Pending',
                '1' => 'Approved',
            ],
            'label' => 'Approval Status',
            'class' => 'form-control',
            'id' => 'approval_status'
        ]) ?>

    </div>

    <div class="text-end" id="action_buttons">
        <?php if ($isApproved): ?>
            <!-- Show download button only if approved -->
            <?= $this->Html->link('Download PDF', ['action' => 'pdf', $appointment->id], ['class' => 'btn btn-sm btn-outline-primary', 'escapeTitle' => false]); ?>
        <?php endif; ?>

        <?php if (!$isApproved): ?>
            <!-- Show Reset and Submit buttons only if NOT approved -->
            <?= $this->Form->button('Reset', ['type' => 'reset', 'class' => 'btn btn-sm btn-outline-warning', 'id' => 'resetBtn']); ?>
            <?= $this->Form->button('Submit', ['type' => 'submit', 'class' => 'btn btn-sm btn-outline-primary', 'id' => 'submitBtn']); ?>
        <?php endif; ?>
    </div>
<?php endif; ?>

<?php echo $this->Form->end(); ?>


<script>
document.addEventListener('DOMContentLoaded', function () {
    const approvalSelect = document.getElementById('approval_status');
    const downloadBtn = document.getElementById('downloadBtn');
    const resetBtn = document.getElementById('resetBtn');
    const submitBtn = document.getElementById('submitBtn');
    const approvalContainer = document.getElementById('approval_status_container');

    function previewChange() {
        if (approvalSelect.value === '1') { // Approved
            downloadBtn.style.display = 'inline-block';
            resetBtn.style.display = 'inline-block';
            submitBtn.style.display = 'inline-block';
        } else if (approvalSelect.value === '2') { // Rejected
            downloadBtn.style.display = 'none';
            resetBtn.style.display = 'inline-block';
            submitBtn.style.display = 'inline-block';
        } else {
            downloadBtn.style.display = 'inline-block';
            resetBtn.style.display = 'inline-block';
            submitBtn.style.display = 'inline-block';
        }
    }

    if (approvalSelect) {
        approvalSelect.addEventListener('change', previewChange);
        previewChange();
    }
});
</script>



                    <?php echo $this->Form->end(); ?>

         <?php if ($appointment->approval_status == 'Approved'): ?>           
        <?= $this->Form->create($appointment) ?>
        
        <?php echo $this->Form->control('approval_status', [
            'options' => ['Approved' => 'Approved'],
            'class' => 'form-control form-select',
            'empty' => 'Select Action',
            'required' => true ]); 
        ?>


	<div class="text-center mb-1">
				  <?= $this->Form->button('Reset', ['type' => 'reset', 'class' => 'btn btn-outline-warning mb-1']); ?>
				  <?= $this->Form->button(__('Submit'),['type' => 'submit', 'class' => 'btn btn-outline-primary mb-1']) ?>
                </div>
        <?= $this->Form->end() ?>

    <div class="text-center mb-1">
        <?php if ($appointment->approval_status === 'Rejected'): ?>
            <button class="btn btn-outline-success btn-sm" disabled>
                Approval
            </button>
        <?php else: ?>
            <?= $this->Html->link('Approval', ['controller' => 'Appointments', 'action' => 'approval', $appointment->id], [
                'class' => 'btn btn-outline-success btn-sm'
            ]) ?>
        <?php endif; ?>
    </div>

    <?php endif; ?>

                </div>
            </div>
        </div>
	</div>
</div>