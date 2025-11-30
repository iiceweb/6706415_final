"use client";

import { useState, useEffect } from "react";

export default function Page() {
  const [rows, setRows] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    async function getCakes() {
      try {

        const apiHost = process.env.NEXT_PUBLIC_API_HOST;
        

        const res = await fetch(`${apiHost}/cakes`, { cache: "no-store" });
        
        if (!res.ok) throw new Error(`Failed to fetch: ${res.status} ${res.statusText}`);
        
        const data = await res.json();
        setRows(data);
      } catch (err) {

        setError(err.message);
      } finally {
        setLoading(false);
      }
    }

    getCakes();
  }, []);



  if (loading) {
    return (
      <main className="container">
        <div className="empty">กำลังโหลดข้อมูลเค้ก...</div>
      </main>
    );
  }

  if (error) {
    return (
      <main className="container">
        <div className="empty">เกิดข้อผิดพลาดในการเชื่อมต่อ API: {error}</div>
      </main>
    );
  }


  return (
    <main className="container">
      <header className="header">
        <h1 className="title">🧁 ขนมเค้กและของหวาน</h1>
        <p className="subtitle">6706415 Thikumporn Mikanate</p>
      </header>

      {!rows || rows.length === 0 ? (
        <div className="empty">ไม่พบข้อมูลเค้ก</div>
      ) : (
        <section className="grid" aria-live="polite">
          {rows.map((x) => (
            <article key={x.id} className="card" tabIndex={0}>
              {x.image && (
                <div className="media">
                  <img
                    src={x.image}
                    alt={x.name}
                    className="img"
                    loading="lazy"
                    decoding="async"
                  />
                </div>
              )}
              <div className="body">
                <h3 className="card-title">{x.name}</h3>
                {x.detail && <p className="detail">{x.detail}</p>}
                <div className="meta">
                  <small>
                    ระดับความหวาน: <span className="code">{x.sweetness_level}</span> · ระดับความยาก:{" "}
                    <span className="code">{x.difficulty_level}</span>
                  </small>
                </div>
              </div>
            </article>
          ))}
        </section>
      )}
    </main>
  );
}