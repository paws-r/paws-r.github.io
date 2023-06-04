<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>polly_delete_lexicon</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified pronunciation lexicon stored in an Amazon Web Services Region

### Description

Deletes the specified pronunciation lexicon stored in an Amazon Web
Services Region. A lexicon which has been deleted is not available for
speech synthesis, nor is it possible to retrieve it using either the
`get_lexicon` or `ListLexicon` APIs.

For more information, see [Managing
Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).

### Usage

    polly_delete_lexicon(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="polly_delete_lexicon_:_Name">Name</code></td>
<td><p>[required] The name of the lexicon to delete. Must be an existing
lexicon in the region.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_lexicon(
      Name = "string"
    )

### Examples

    ## Not run: 
    # Deletes a specified pronunciation lexicon stored in an AWS Region.
    svc$delete_lexicon(
      Name = "example"
    )

    ## End(Not run)
