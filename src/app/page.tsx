'use client'

import {useEffect, useState} from 'react';

export default function Home() {
  const [data, setData] = useState<string>('');

  useEffect(() => {
    fetch('/api/hello')
    .then(res => res.json())
    .then(data => setData(data.message))
  }, []);

  return(
      <main>
        <h1>Fullstack Typescript Test</h1>
        <p>Message from api :: {data || 'Loading...'}</p>
      </main>
  )
}