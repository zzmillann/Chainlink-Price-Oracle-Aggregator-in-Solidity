# Chainlink Price Oracle Aggregator in Solidity

Descripción:
Contrato inteligente en Solidity que obtiene precios en tiempo real de criptomonedas y activos financieros usando los oráculos de Chainlink. Retorna valores ajustados a dos decimales y permite añadir fácilmente nuevos feeds, ideal para aplicaciones DeFi y dashboards confiables de precios.

# Descripción del Proyecto

PrecioDinamico es un contrato inteligente en Solidity que permite consultar precios en tiempo real de criptomonedas y activos financieros mediante los oráculos de Chainlink.
Los precios se devuelven con dos decimales, y la arquitectura permite agregar fácilmente nuevos feeds sin modificar la lógica existente.

Características Principales

Consulta de precios de:

Criptomonedas: Ethereum (ETH), Bitcoin (BTC), Chainlink (LINK), Solana (SOL)

Activos tradicionales: Euro/Dólar (EUR/USD), Oro/Dólar (XAU/USD)

Retorno de precios en formato legible con dos decimales

Arquitectura genérica y extensible para agregar nuevos activos

Compatible con testnets como Sepolia

Código optimizado para eficiencia de gas y simplicidad

# Requisitos

Remix IDE

MetaMask
 o cualquier wallet compatible con Ethereum

Acceso a testnets (recomendado: Sepolia)

Instalación y Uso

Clona este repositorio:

git clone https://github.com/tuusuario/Chainlink-Price-Oracle.git


Abre Remix IDE y carga el archivo PrecioDinamico.sol.

Compila con Solidity 0.8.x.

Despliega en Sepolia Testnet usando MetaMask.

Llama a las funciones públicas para obtener los precios:

getPrecioEthereum()
getPrecioBitcoin()
getPrecioLink()
getEuroDolar()
getOroDolar()
getPrecioSolana()

# Ejemplo de Resultado
string memory precioETH = precioDinamico.getPrecioEthereum(); // "3080.42"
string memory precioBTC = precioDinamico.getPrecioBitcoin();  // "45890.35"

Extender el Contrato

Para agregar un nuevo activo:

Copia la función getPrecioXYZ() existente.

Reemplaza la dirección del feed de Chainlink por la del nuevo activo.

Llama a la función como las demás para obtener el precio en tiempo real.

Contribuciones

Las contribuciones y mejoras son bienvenidas.
Por favor, abre un Pull Request o un Issue para sugerencias.
