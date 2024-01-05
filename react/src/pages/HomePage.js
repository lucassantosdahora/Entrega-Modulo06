import React from 'react';
import Main from '../components/main';
import Logo from '../components/logo'
import Footer from '../components/footer';
import '../styles/home.css';

export default function HomePage() {
  return (
    <div className='home'>
       <Logo />
       <Main />
       <Footer />
    </div>
  );
}
