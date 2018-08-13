<?php
  
use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Kritiksaran extends REST_Controller {
 
    function __construct($config = 'rest') {
        parent::__construct($config);

        $this->load->model('kritiksaran_model');
        $this->load->helper('filename');
        $this->load->helper('url');
    }
 
    // show data kritiksaran
    function index_get() {
        $id = $this->get('id'); 
        $alamatFoto = site_url().'uploads/kritiksaran/img/';

        if ($id == '') {
            $offset = isset($_GET['offset']) && $_GET['offset'] != '' ? $this->get('offset') : 0;
             
            // var_dump($offset);
    
            $data = $this->kritiksaran_model 
                ->limit(2, $offset)
                ->order_by('id', 'DESC')
                ->get_all(); 
            
            $jumlah_data = $this->kritiksaran_model 
                ->limit(2, $offset)
                ->order_by('id', 'DESC')
                ->count_rows(); 

                $json_kosong = 0;

                // var_dump($data); die();

                $num = '';
            if($jumlah_data < 2){  
                if($jumlah_data==0){
                    $json_kosong = 1;
                }else{
                    $data = $this->kritiksaran_model 
                        ->limit($jumlah_data, $offset)
                        ->order_by('id', 'DESC')
                        ->get_all(); 
                    $jumlah_data = $this->kritiksaran_model 
                        ->limit($jumlah_data, $offset)
                        ->order_by('id', 'DESC')
                        ->get_all();  
                    if(empty($jumlah_data)){ 
                        $data = $this->kritiksaran_model 
                            ->limit(0, 2)
                            ->order_by('id', 'DESC')
                            ->get_all(); 
                        $num = 0;
                    }else{
                        $num = $offset;
                    } 
                }
            } else {
                $num = $offset;
            }   
            // var_dump($jumlah_data);
            if ($data != FALSE) {
                foreach ($data as $row) {  
                    // mendeklarasikan data apa aja yang akan ditampilkan
                    $value[] = array(
                        'no' => $num++,
                        'id_krisan' => $row->id, 
                        'nama_pasar' => $row->nama_pasar, 
                        'nama_konsumen' => $row->nama_konsumen, 
                        'isi_krisan' => $row->isi_krisan, 
                        'foto_krisan' => $alamatFoto.$row->foto_krisan, 
                        'waktu_krisan' => $row->waktu_krisan, 
                    );
                }
            }
            
            if($json_kosong==1){
                $value = array(
                    'no' => "",
                    'id_krisan' => "", 
                    'nama_pasar' => "", 
                    'nama_konsumen' => "", 
                    'isi_krisan' => "", 
                    'foto_krisan' => "", 
                    'waktu_krisan' => "", 
                ); 
            }else{ 

            }
        } else {
            $data = $this->kritiksaran_model->get($id); 
        }
        $this->response($value, 200);
    }
 
 
    // show data kritiksaran
    function detail_post() {
        $id = $this->post('id_krisan'); 
        $alamatFoto = site_url().'uploads/kritiksaran/img/';
 
        $row = $this->kritiksaran_model->get($id); 
 
        $value = array( 
            'id_krisan' => $row->id, 
            'nama_pasar' => $row->nama_pasar, 
            'nama_konsumen' => $row->nama_konsumen, 
            'isi_krisan' => $row->isi_krisan, 
            'foto_krisan' => $alamatFoto.$row->foto_krisan, 
            'waktu_krisan' => $row->waktu_krisan, 
        ); 
        $this->response($value, 200);
    }
 
    // insert new data to kritiksaran
    function index_post() { 
        $foto_krisan 	= $_POST['foto_krisan'];  
        
		$foto_name   = fileName(1, 'PRD','',8).'.png';
        $path_upload = "uploads/kritiksaran/img/$foto_name";
        file_put_contents($path_upload,base64_decode($foto_krisan));

        $data = array(
            'nama_pasar'     => $this->post('nama_pasar'),
            'nama_konsumen'  => $this->post('nama_konsumen'),
            'isi_krisan'     => $this->post('isi_krisan'),
            'foto_krisan'    => $foto_name, 
        );

        $insert = $this->kritiksaran_model->insert($data);
        if ($insert) { 
            // $this->response($insert, 200);
            $this->response("Sukses Tambah Data", 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    } 
 
}