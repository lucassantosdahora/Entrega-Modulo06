import React from 'react';
import Table from '../components/tableDestinos';
import Logo from '../components/logo'
import Footer from '../components/footer';
import '../styles/home.css';

export default function HomePage() {
  return (
    <div className='home'>
       <Logo />
       <Table />
       <Footer />
    </div>
  );
}