<?php 

class M_barang extends CI_Model{

	function tampil_data(){
		return $this->db->get('barang');
	}

	function simpan_data($data){
		$this->db->insert('barang',$data);
	}

	function edit_data($where){
		return $this->db->get_where('barang',$where);
	}

	function update_data($where,$data){
		$this->db->where($where);
		$this->db->update('barang',$data);
	}

	function hapus_data($where){
		$this->db->where($where);
		$this->db->delete('barang',$where);
	}

}
