<div class="p-6 sm:px-20 bg-white border-b border-gray-200">
    <div>
        <!-- < x-jet-application-logo class="block h-12 w-auto" /> -->
    </div>

    <div class="mt-8 text-2xl">
        <span class="font-extrabold">Selamat datang,</span>
        @if(Auth::user()->roles == 'ADMIN')
        Admin.
        @elseif (Auth::user()->roles == 'PARTNER')
        {{Auth::user()->name}}
        @endif
        
    </div>

    <div class="mt-6 text-gray-500">
    @if(Auth::user()->roles == 'ADMIN')
    Halaman utama Admin memungkinkan Admin untuk mengelola data di Aplikasi Return secara berkala, data yang dapat dikelola menyangkut semua proses di Aplikasi Return. Admin juga bertanggung jawab atas proses pencairan koin pengguna menjadi uang.
    @elseif (Auth::user()->roles == 'PARTNER')
    Halaman utama Bank Sampah menyediakan fitur transaksi dari pengguna Return, di sini pihak Bank Sampah dapat mengelola data transaksi pengguna yang telah memakai jasa Return. Pastikan semua data di cek secara berkala untuk diperbarui agar pengguna mendapatkan informasi mengenai transaksi secepatnya.
    @endif
    </div>
</div>

