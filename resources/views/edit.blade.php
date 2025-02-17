<form action="{{ route('update', $data->id) }}" method="POST">
    @csrf @method('PUT')
    <input type="text" name="name" value="{{ $data->name }}">
    <input type="text" name="phone" value="{{ $data->phone }}">
    <button type="submit">Update</button>
</form>
