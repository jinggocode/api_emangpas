<?php
  
use Restserver\Libraries\REST_Controller;

require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';

class Kritiksaran extends REST_Controller {
 
    function __construct($config = 'rest') {
        parent::__construct($config);

        $this->load->helper('filename');
        $this->load->helper('url');
        $this->load->model('kritiksaran_model');
    }
 
    // show data kritiksaran
    function index_get() { 
        $page = $_GET['page']; 

        $alamatFoto = site_url().'uploads/kritiksaran/img/';   
        $start = 0;  
        $limit = 5; 

        $total = $this->kritiksaran_model  
            ->count_rows();  
        $page_limit = ceil($total/$limit);  

        if($page<=$page_limit){ 
            $start = ($page - 1) * $limit; 

            $data = $this->kritiksaran_model 
                ->limit($limit, $start)
                ->order_by('id', 'DESC')
                ->get_all();
            
            if ($data != FALSE) {
                $no = 1;
                foreach ($data as $row) {  
                    // mendeklarasikan data apa aja yang akan ditampilkan
                    $value[] = array(
                        'no' => $no++,
                        'id_krisan' => $row->id, 
                        'nama_pasar' => $row->nama_pasar, 
                        'nama_konsumen' => $row->nama_konsumen, 
                        'isi_krisan' => $row->isi_krisan, 
                        'foto_krisan' => $alamatFoto.$row->foto_krisan, 
                        'waktu_krisan' => $row->waktu_krisan, 
                    );
                }
            } 
        } else {
            $value[] = array( 
                'id_krisan' => "NULL", 
                'nama_pasar' => "", 
                'nama_konsumen' => "", 
                'isi_krisan' => "", 
                'foto_krisan' => "", 
                'waktu_krisan' => "", 
            ); 
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
            $this->response("Sukses Tambah Data", 200);
        } else {
            $this->response(array('status' => 'fail', 502));
        }
    } 
 
}