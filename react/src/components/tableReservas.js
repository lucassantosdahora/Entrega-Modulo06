import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';
import '../styles/table.css';

const Table = () => {
  const [data, setData] = useState([]);
  const [destinos, setDestinos] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const responseReservas = await axios.get('https://localhost:7057/api/reservas');
        const responseDestinos = await axios.get('https://localhost:7057/api/destinos');

        setData(responseReservas.data);
        setDestinos(responseDestinos.data);
      } catch (error) {
        console.error('Erro ao buscar dados:', error);
      }
    };

    fetchData();
  }, []);

  // Função para obter o nome do destino com base no DestinoId
  const getDestinoName = (destinoId) => {
    const destino = destinos.find(destino => destino.destinoId === destinoId);
    return destino ? destino.destinoName : 'Desconhecido';
  };

  return (
    <div className="table-container">
      <Link to="/">Voltar para Home</Link>
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Cliente</th>
            <th>Email</th>
            <th>Telefone</th>
            <th>Q.pessoas</th>
            <th>Valor</th>
            <th>Destino</th>
          </tr>
        </thead>
        <tbody>
          {data.map(reserva => (
            <tr key={reserva.reservaId}>
              <td>{reserva.reservaId}</td>
              <td>{reserva.clienteName}</td>
              <td>{reserva.clienteEmail}</td>
              <td>{reserva.clienteTelephone}</td>
              <td>{reserva.quatidadePeople}</td>
              <td>{reserva.reservaValue} R$</td>
              <td>{getDestinoName(reserva.destinoId)}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default Table;



