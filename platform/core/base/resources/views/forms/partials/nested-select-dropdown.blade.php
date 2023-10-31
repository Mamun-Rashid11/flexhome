 <select name="{{ $name }}" {{ Html::attributes($attributes) }}>
    @include('core/base::forms.partials.nested-select-option', [
        'options' => $choices,
        'indent' => null,
        'selected' => $selected,
    ])
</select>
