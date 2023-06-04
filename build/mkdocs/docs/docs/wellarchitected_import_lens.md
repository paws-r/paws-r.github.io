<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_import_lens</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Import a new custom lens or update an existing custom lens

### Description

Import a new custom lens or update an existing custom lens.

To update an existing custom lens, specify its ARN as the `LensAlias`.
If no ARN is specified, a new custom lens is created.

The new or updated lens will have a status of `DRAFT`. The lens cannot
be applied to workloads or shared with other Amazon Web Services
accounts until it's published with `create_lens_version`.

Lenses are defined in JSON. For more information, see [JSON format
specification](https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html)
in the *Well-Architected Tool User Guide*.

A custom lens cannot exceed 500 KB in size.

**Disclaimer**

Do not include or gather personal identifiable information (PII) of end
users or other identifiable individuals in or via your custom lenses. If
your custom lens or those shared with you and used in your account do
include or collect PII you are responsible for: ensuring that the
included PII is processed in accordance with applicable law, providing
adequate privacy notices, and obtaining necessary consents for
processing such data.

### Usage

    wellarchitected_import_lens(LensAlias, JSONString, ClientRequestToken,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_import_lens_:_LensAlias">LensAlias</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_import_lens_:_JSONString">JSONString</code></td>
<td><p>[required] The JSON representation of a lens.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_import_lens_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code id="wellarchitected_import_lens_:_Tags">Tags</code></td>
<td><p>Tags to associate to a lens.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LensArn = "string",
      Status = "IN_PROGRESS"|"COMPLETE"|"ERROR"
    )

### Request syntax

    svc$import_lens(
      LensAlias = "string",
      JSONString = "string",
      ClientRequestToken = "string",
      Tags = list(
        "string"
      )
    )
