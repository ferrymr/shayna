@extends('layouts.default')

@section('content')
    <div class="card">
      <div class="card-header">
        <strong>Ubah transaksi</strong>
        <small>{{ $item->uuid }}</small>
      </div>
      <div class="card-body card-block">
        <form action="{{ route('transactions.update', $item->id) }}" method="POST">
          @method('PUT')
          @csrf
          <div class="form-group">
            <label for="name" class="form-control-label">Nama Pemesan</label>
            <input  type="text"
                    name="name" 
                    value="{{ old('name') ? old('name') : $item->name }}" 
                    class="form-control @error('name') is-invalid @enderror"/>
            @error('name') <div class="text-muted">{{ $message }}</div> @enderror
          </div>
          <div class="form-group">
            <label for="email" class="form-control-label">Email</label>
            <input  type="email"
                    name="email" 
                    value="{{ old('email') ? old('email') : $item->email }}" 
                    class="form-control @error('email') is-invalid @enderror"/>
            @error('email') <div class="text-muted">{{ $message }}</div> @enderror
          </div>
          <div class="form-group">
            <label for="number" class="form-control-label">Nomor Pemesan</label>
            <input  type="text"
                    name="number" 
                    value="{{ old('number') ? old('number') : $item->number }}" 
                    class="form-control @error('number') is-invalid @enderror"/>
            @error('number') <div class="text-muted">{{ $message }}</div> @enderror
          </div>
          <div class="form-group">
            <label for="address" class="form-control-label">Alamat</label>
            <input  type="text"
                    name="address" 
                    value="{{ old('address') ? old('address') : $item->address }}" 
                    class="form-control @error('address') is-invalid @enderror"/>
            @error('address') <div class="text-muted">{{ $message }}</div> @enderror
          </div>
          {{-- <div class="form-group">
            <label for="transaction_total" class="form-control-label">Total Transaksi</label>
            <input  type="text"
                    name="transaction_total" 
                    value="{{ old('transaction_total') ? old('transaction_total') : $item->transaction_total }}" 
                    class="form-control @error('transaction_total') is-invalid @enderror"/>
            @error('transaction_total') <div class="text-muted">{{ $message }}</div> @enderror
          </div>
          <div class="form-group">
            <label for="transaction_status" class="form-control-label">Status</label>
            <input  type="tex"
                    name="transaction_status" 
                    value="{{ old('transaction_status') ? old('transaction_status') : $item->transaction_status }}" 
                    class="form-control @error('transaction_status') is-invalid @enderror"/>
            @error('transaction_status') <div class="text-muted">{{ $message }}</div> @enderror
          </div> --}}
          <div class="form-group">
            <button class="btn btn-primary btn-block" type="submit">
              Ubah Transaksi
            </button>
          </div>
        </form>
      </div>
    </div>
@endsection