<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "projectatlas";

$conn = mysqli_connect($servername, $username, $password, $dbname);

$app_status = ['Pending' => 0, 'Approved' => 0, 'Rejected' => 0];
$app_sql = "SELECT approval_status, COUNT(*) AS total FROM appointments GROUP BY approval_status";
$app_res = mysqli_query($conn, $app_sql);
while ($row = mysqli_fetch_assoc($app_res)) {
    switch ($row['approval_status']) {
        case 0: $app_status['Pending'] = $row['total']; break;
        case 1: $app_status['Approved'] = $row['total']; break;
        case 2: $app_status['Rejected'] = $row['total']; break;
    }
}

$subj_credit = [];
$subj_sql = "SELECT credit_hour, COUNT(*) AS total FROM subjects GROUP BY credit_hour";
$subj_res = mysqli_query($conn, $subj_sql);
while ($row = mysqli_fetch_assoc($subj_res)) {
    $subj_credit[$row['credit_hour']] = $row['total'];
}

$sem_code = [];
$sem_sql = "SELECT code, COUNT(*) AS total FROM semesters GROUP BY code";
$sem_res = mysqli_query($conn, $sem_sql);
while ($row = mysqli_fetch_assoc($sem_res)) {
    $sem_code[$row['code']] = $row['total'];
}
?>

<div class="col-md-12">
    <div class="card bg-body-tertiary border-0 shadow mb-4">
        <div class="card-body">

            <p class="fs-2 fw-bold text-center">ADMIN DASHBOARD</p>
            <div class="tricolor_line mb-3"></div>
            </div>
        </div>
    </div>
</div>

                </table>
            </div>
        </div>
    </div>
</div>

<style>

</style>

<div class='text-center mt-3'>
    <?= $this->Html->link('Download PDF', ['action' => 'pdf2'], ['class' => 'btn btn-sm btn-outline-primary']) ?>
</div>