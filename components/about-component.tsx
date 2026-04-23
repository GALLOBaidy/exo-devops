"use client";

import Link from "next/link";
import React from "react";
import styles from "../styles/Home.module.css";

export default function AboutComponent() {
  return (
    <>
      <h1>About Page test</h1>
      <p className={styles.description}>
        <Link href="/">&larr; Go Back</Link>
        <p>Bon voyons voir ce que ça donne ç</p>
      </p>
    </>
  );
}
