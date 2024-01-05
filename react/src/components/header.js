import React from 'react';
import'../styles/header.css'

export default function Header() {
  return (
    <div className='container-header'>
      <div>
        <nav>
          <ul>
            <li><a href="/">Home</a></li>
            <li><a href="/destinos">Destinos</a></li>
            <li><a href="/reservas">Reservas</a></li>
          </ul>
        </nav>
      </div>
    </div>
  );
}


