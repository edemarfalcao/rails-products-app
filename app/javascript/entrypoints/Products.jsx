
import React, { useEffect, useState } from 'react';
import ReactDOM from 'react-dom/client';
import App from '../entrypoints/components/App';

export default function Products  (props)  {

  const [products, setProducts] = useState([]);

  useEffect(() => {
    const apiUrl = '/api/v1/products';

    fetch(apiUrl)
      .then((response) => response.json())
      .then((data) => {

        setProducts(data);
      })
      .catch((error) => {
        console.error('Error fetching data:', error);
      });
  }, []);


  return (
    <>
    <div className="flex flex-wrap items-center gap-4">
      {products.map((product, key) => (
        <div className="product bg-white rounded-lg shadow-md overflow-hidden" key={key}>
          <img src={product.image_url} alt={product.name} className="product-image w-full max-w-xs mx-auto" />

          <div className="product-details p-4">
            <h2 className="text-lg font-semibold mb-2">{product.name}</h2>
            <p className="text-gray-700"><strong>Price:</strong> {product.price}</p>
          </div>
        </div>
      ))}
    </div>
  </>
  )
}

const element = document.getElementById('products')
  ReactDOM.createRoot(element).render(
    <App>
      <Products {...element?.dataset} />
    </App>
  )
