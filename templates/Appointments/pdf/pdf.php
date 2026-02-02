<!DOCTYPE html>
<html lang="ms">
<head>
    <title>Surat Arahan Mengajar</title>
    <style>
        @page {
            size: A4;
            margin: 0;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12.5px; /* Kecilkan sedikit untuk muat satu halaman */
            line-height: 1.3;
            margin: 0;
            padding: 0;
        }
        
        .content {
            margin-left: 70px;
            margin-right: 70px;
            /* Kurangkan padding untuk jimat ruang */
            padding-top: 10px; 
        }

        .justify {
            text-align: justify;
        }

        .text-uppercase {
            text-transform: uppercase;
        }

        .header-info {
            float: right;
            width: auto;
            margin-bottom: 10px;
        }

        .header-info td {
            padding-left: 10px;
        }

        .clear {
            clear: both;
        }

        .bold {
            font-weight: bold;
            text-align: justify;
        }

        .footer-note {
            text-align: center;
            font-style: italic;
            font-weight: bold;
            margin-top: 20px;
            font-size: 11px;
        }

        .img-container img {
            display: block;
        }
    </style>
</head>

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

<body>
    <div class="img-container">
        <?php echo $this->Html->image('headerUiTM.png',['width'=>'100%','fullBase'=>true]); ?>
    </div>

    <div class="content">
        <div class="header-info">
            <table border="0">
                <tr>
                    <td>No. Rujukan</td>
                    <td>:</td>
                    <td><?= h($appointment->approval_status == 1 ? $appointment->reference_no : 'Diproses') ?></td>
                </tr>
                <tr>
                    <td>Tarikh</td>
                    <td>:</td>
                    <td><?= h($appointment->approval_status == 1 ? formatMalayDate($appointment->date) : 'Diproses') ?></td>
                </tr>
            </table>
        </div>

        <div class="clear"></div>

        <div class="bold text-uppercase">
            <?php echo ($appointment->lecturer->name); ?>
        </div>
        <div>
            Pensyarah Kanan <br/>
            Fakulti Sains Maklumat <br/>
            UiTM Cawangan Selangor <br/>
            Kampus Puncak Perdana <br/>
            40150 Shah Alam <br/>
            Selangor. <br/>
        </div>

        <br/>
        <div>Assalammualaikum W.B.T</div>
        <br/>
        <div>Tuan/Puan,</div>
        <br/>

        <div class="bold text-uppercase">
            ARAHAN MENGAJAR BAGI SEMESTER <?php echo ($appointment->semester->name); ?> PROGRAM SARJANA MUDA SAINS MAKLUMAT (KEPUJIAN) PENGURUSAN SISTEM MAKLUMAT (CDIM262)
        </div>
        <br/>

        <div class="justify">
            Dengan hormatnya perkara di atas adalah dirujuk.
            <br/><br/>
            2. Dimaklumkan bahawa pihak Fakulti Sains Maklumat UiTM Cawangan Selangor Kampus Puncak Perdana dengan ini mengarahkan Tuan/Puan untuk melaksanakan tugas pengajaran bagi kursus dan tarikh seperti berikut;
        </div>
<br/>
            <table border="0" style="margin-top: 10px; margin-bottom: 10px; font-weight: bold; text-transform: uppercase;">
            <tr>
                <td style="width: 110px;">KOD KURSUS</td>
                <td style="width: 10px;">:</td>
                <td><?php echo ($appointment->subject->code); ?></td>
            </tr>
            <tr>
                <td>NAMA KURSUS</td>
                <td>:</td>
                <td><?php echo ($appointment->subject->name); ?></td>
            </tr>
        </table>
<br/>
        <div class="justify">
            3. Arahan ini akan berkuatkuasa pada tarikh bermula semester iaitu pada 
            <strong><?= formatMalayDate($appointment->start_date); ?></strong> sehingga 
            <strong><?= formatMalayDate($appointment->end_date); ?></strong>. 
            Tuan/Puan dikehendaki melaksanakan tugas pengajaran tersebut sepanjang semester berkenaan dan memastikan semua keperluan akademik dipatuhi.
            <br/><br/>
            4. Pihak Fakulti amat menghargai kerjasama dan komitmen Tuan/Puan dalam memastikan kelancaran proses pengajaran dan pembelajaran.
            <br/><br/>
            5. Sehubungan dengan itu, sila hubungi Pejabat AM Fakulti di talian <strong>03-3258 4000</strong> sekiranya terdapat sebarang pertanyaan.
        </div>
<br/><br/>
        <div class="bold" style="margin-top: 15px;">
            "MALAYSIA MADANI"<br/>
            "BERKHIDMAT UNTUK NEGARA"
        </div>

        <div style="margin-top: 10px;">Saya yang menjalankan amanah,</div>
        <br/><br/>

        <div class="bold">
            <?php echo ($appointment->approval_name); ?><br/>
        </div>
            <?php echo ($appointment->approval_post); ?><br/>
            Fakulti Sains Maklumat
<br/><br/>
        <div class="footer-note">
            [SURAT INI ADALAH CETAKAN KOMPUTER DAN TIDAK PERLU DITANDATANGANI]
        </div>
<br/>
        <div class="img-container" style="margin-top: 10px;">
            <?php echo $this->Html->image('footerUiTM.png',['width'=>'100%','fullBase'=>true]); ?>
        </div>
    </div>
</body>
</html>