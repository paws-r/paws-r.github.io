<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_get_revision</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a revision data object for a specified document ID and block address

### Description

Returns a revision data object for a specified document ID and block
address. Also returns a proof of the specified revision for verification
if `DigestTipAddress` is provided.

### Usage

    qldb_get_revision(Name, BlockAddress, DocumentId, DigestTipAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_get_revision_:_Name">Name</code></td>
<td><p>[required] The name of the ledger.</p></td>
</tr>
<tr class="even">
<td><code id="qldb_get_revision_:_BlockAddress">BlockAddress</code></td>
<td><p>[required] The block location of the document revision to be
verified. An address is an Amazon Ion structure that has two fields:
<code>strandId</code> and <code>sequenceNo</code>.</p>
<p>For example: <code
style="white-space: pre;">⁠{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14}⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="qldb_get_revision_:_DocumentId">DocumentId</code></td>
<td><p>[required] The UUID (represented in Base62-encoded text) of the
document to be verified.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_get_revision_:_DigestTipAddress">DigestTipAddress</code></td>
<td><p>The latest block location covered by the digest for which to
request a proof. An address is an Amazon Ion structure that has two
fields: <code>strandId</code> and <code>sequenceNo</code>.</p>
<p>For example: <code
style="white-space: pre;">⁠{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:49}⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Proof = list(
        IonText = "string"
      ),
      Revision = list(
        IonText = "string"
      )
    )

### Request syntax

    svc$get_revision(
      Name = "string",
      BlockAddress = list(
        IonText = "string"
      ),
      DocumentId = "string",
      DigestTipAddress = list(
        IonText = "string"
      )
    )
