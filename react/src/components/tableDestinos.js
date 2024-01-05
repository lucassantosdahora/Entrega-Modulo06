import React, { useEffect, useState } from 'react';
import axios from 'axios';  // Importando o Axios
import { Link } from 'react-router-dom';
import '../styles/table.css';

const Table = () => {
  const [data, setData] = useState([]);

  useEffect(() => {
    // Função para buscar dados usando Axios
    const fetchData = async () => {
      try {
        const response = await axios.get('https://localhost:7057/api/destinos');
        setData(response.data);
      } catch (error) {
        console.error('Erro na requisição:', error);
      }
    };

    // Chama a função de busca quando o componente é montado
    fetchData();
  }, []); // Executa apenas uma vez ao montar o componente

  return (
    <div className="table-container">
      <Link to="/">Voltar para Home</Link>
      <table>
      <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Localização</th>
          </tr>
        <tbody>
          {data.map(destino => (
            <tr key={destino.destinoId}>
              <td>{destino.destinoId}</td>
              <td>{destino.destinoName}</td>
              <td>{destino.destinoDescription}</td>
              <td>{destino.destinoLocation}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default Table;
