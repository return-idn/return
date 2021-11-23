<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Penarikan &raquo; #{{ $coinWithdrawal->id }} {{ $coinWithdrawal->name }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <h2 class="font-semibold text-lg text-gray-800 leading-tight mb-5">Coin Withdrawal Details</h2>

            <div class="bg-white overflow-hidden shadow sm:rounded-lg mb-10">
                <div class="p-6 bg-white border-b border-gray-200">
                    <table class="table-auto w-full">
                        <tbody>
                            <tr>
                                <th class="border px-6 py-4 text-right">Name</th>
                                <td class="border px-6 py-4">{{ $coinWithdrawal->user->name }}</td>
                            </tr>
                            <tr>
                                <th class="border px-6 py-4 text-right">Email</th>
                                <td class="border px-6 py-4">{{ $coinWithdrawal->user->email }}</td>
                            </tr>
                            <tr>
                                <th class="border px-6 py-4 text-right">Bank</th>
                                <td class="border px-6 py-4">{{ $coinWithdrawal->bank_name }}</td>
                            </tr>
                            <tr>
                                <th class="border px-6 py-4 text-right">Account Name</th>
                                <td class="border px-6 py-4">{{ $coinWithdrawal->bank_owner_name }}</td>
                            </tr>
                            <tr>
                                <th class="border px-6 py-4 text-right">Bank Account</th>
                                <td class="border px-6 py-4">{{ $coinWithdrawal->bank_address }}</td>
                            </tr>
                            <tr>
                                <th class="border px-6 py-4 text-right">Total Coin</th>
                                <td class="border px-6 py-4">{{ number_format($coinWithdrawal->total) }}</td>
                            </tr>
                            <tr>
                                <th class="border px-6 py-4 text-right">Status</th>
                                <td class="border px-6 py-4">{{ $coinWithdrawal->status }}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>
</x-app-layout>
