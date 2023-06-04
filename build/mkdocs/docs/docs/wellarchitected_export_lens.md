<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_export_lens</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Export an existing lens

### Description

Export an existing lens.

Only the owner of a lens can export it. Lenses provided by Amazon Web
Services (Amazon Web Services Official Content) cannot be exported.

Lenses are defined in JSON. For more information, see [JSON format
specification](https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html)
in the *Well-Architected Tool User Guide*.

**Disclaimer**

Do not include or gather personal identifiable information (PII) of end
users or other identifiable individuals in or via your custom lenses. If
your custom lens or those shared with you and used in your account do
include or collect PII you are responsible for: ensuring that the
included PII is processed in accordance with applicable law, providing
adequate privacy notices, and obtaining necessary consents for
processing such data.

### Usage

    wellarchitected_export_lens(LensAlias, LensVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_export_lens_:_LensAlias">LensAlias</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_export_lens_:_LensVersion">LensVersion</code></td>
<td><p>The lens version to be exported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LensJSON = "string"
    )

### Request syntax

    svc$export_lens(
      LensAlias = "string",
      LensVersion = "string"
    )
