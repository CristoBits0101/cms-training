<!-- Verificamos si el sistema está en modo de edición -->
[#if cmsfn.editMode]
  <p>Estamos dentro del bloque de código que se ejecuta solo si el sistema está en modo de edición.</p>
  <p>Aquí puedes realizar acciones específicas relacionadas con la edición del contenido.</p>
  <!-- Por ejemplo, podrías mostrar opciones de edición o funciones adicionales. -->
[/#if]

<!-- El código fuera del bloque 'if' se ejecutará independientemente del modo de edición -->
<p>Este contenido siempre se mostrará, independientemente del modo de edición.</p>