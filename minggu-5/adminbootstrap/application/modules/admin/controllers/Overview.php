<?php
    class Overview extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
    }
    public function index()
    {
        $this->load->view("partials/head");
        $this->load->view("partials/sidebar");
        $this->load->view("partials/navbar");
        $this->load->view("v_overview");
        $this->load->view("partials/assets");
    }
}