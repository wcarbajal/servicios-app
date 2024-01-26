import Image from "next/image";
import Link from "next/link";
import { redirect } from "next/navigation";


export default function Home() {
    redirect('/login');
    return (
        <main className="flex min-h-full flex-col items-center justify-between p-24">

                <h1 className="text-5xl">Servicios App</h1>

                <Link href="/dashboard" className="bg-blue-600 text-white rounded m-10 p-3 cursor-pointer"> Dashboard   </Link>

        </main>
    );
}
