<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>polly_put_lexicon</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stores a pronunciation lexicon in an Amazon Web Services Region

### Description

Stores a pronunciation lexicon in an Amazon Web Services Region. If a
lexicon with the same name already exists in the region, it is
overwritten by the new lexicon. Lexicon operations have eventual
consistency, therefore, it might take some time before the lexicon is
available to the SynthesizeSpeech operation.

For more information, see [Managing
Lexicons](https://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).

### Usage

    polly_put_lexicon(Name, Content)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="polly_put_lexicon_:_Name">Name</code></td>
<td><p>[required] Name of the lexicon. The name must follow the regular
express format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive
alphanumeric string up to 20 characters long.</p></td>
</tr>
<tr class="even">
<td><code id="polly_put_lexicon_:_Content">Content</code></td>
<td><p>[required] Content of the PLS lexicon as string data.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_lexicon(
      Name = "string",
      Content = "string"
    )

### Examples

    ## Not run: 
    # Stores a pronunciation lexicon in an AWS Region.
    svc$put_lexicon(
      Content = "file://example.pls",
      Name = "W3C"
    )

    ## End(Not run)
