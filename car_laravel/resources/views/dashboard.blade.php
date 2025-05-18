<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            {{-- Card login --}}
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg mb-6">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    {{ __("You're logged in!") }}

                    <div class="mt-4">
                        <a href="{{ route('car.create') }}"
                           class="inline-block px-4 py-2 bg-blue-600 text-white text-sm font-semibold rounded hover:bg-blue-700 transition">
                            ➕ Add Car
                        </a>
                    </div>
                </div>
            </div>

            {{-- Daftar Mobil --}}
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    <h3 class="text-lg font-bold mb-4">Daftar Mobil</h3>

                    <table class="min-w-full text-sm text-left text-gray-200">
                        <thead class="bg-gray-700 text-white">
                            <tr>
                                <th class="px-4 py-2">#</th>
                                <th class="px-4 py-2">Merk</th>
                                <th class="px-4 py-2">Model</th>
                                <th class="px-4 py-2">Year</th>
                                <th class="px-4 py-2">Price</th>
                            </tr>
                        </thead>
                        <tbody class="bg-gray-900">
                            @forelse($cars as $car)
                                <tr class="border-b border-gray-700">
                                    <td class="px-4 py-2">{{ $car->id }}</td>
                                    <td class="px-4 py-2">{{ $car->merk->name ?? '-' }}</td>
                                    <td class="px-4 py-2">{{ $car->model }}</td>
                                    <td class="px-4 py-2">{{ $car->year }}</td>
                                    <td class="px-4 py-2">Rp {{ number_format($car->price, 0, ',', '.') }}</td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="5" class="px-4 py-2 text-center text-gray-400">Belum ada data mobil.</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>
</x-app-layout>
