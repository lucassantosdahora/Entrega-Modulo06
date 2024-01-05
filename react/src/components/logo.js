import React from 'react';
import '../styles/logo.css';
import logoImage from '../assets/logo.png';

export default function Logo() {
  return (
    <div className='logo'>
      <img src={logoImage} alt="logo do site viagens.com" />
      <h1>Viagens.com</h1>
      <p>API sistema de consutas com tabelas de detinos e Reservas. "Agência viagens.com fazendo sua Alegria.."</p>
    </div>
  );
}
