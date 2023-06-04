<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_get_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a block object at a specified address in a journal

### Description

Returns a block object at a specified address in a journal. Also returns
a proof of the specified block for verification if `DigestTipAddress` is
provided.

For information about the data contents in a block, see [Journal
contents](https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html)
in the *Amazon QLDB Developer Guide*.

If the specified ledger doesn't exist or is in `DELETING` status, then
throws `ResourceNotFoundException`.

If the specified ledger is in `CREATING` status, then throws
`ResourcePreconditionNotMetException`.

If no block exists with the specified address, then throws
`InvalidParameterException`.

### Usage

    qldb_get_block(Name, BlockAddress, DigestTipAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_get_block_:_Name">Name</code></td>
<td><p>[required] The name of the ledger.</p></td>
</tr>
<tr class="even">
<td><code id="qldb_get_block_:_BlockAddress">BlockAddress</code></td>
<td><p>[required] The location of the block that you want to request. An
address is an Amazon Ion structure that has two fields:
<code>strandId</code> and <code>sequenceNo</code>.</p>
<p>For example: <code
style="white-space: pre;">⁠{strandId:"BlFTjlSXze9BIh1KOszcE3",sequenceNo:14}⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="qldb_get_block_:_DigestTipAddress">DigestTipAddress</code></td>
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
      Block = list(
        IonText = "string"
      ),
      Proof = list(
        IonText = "string"
      )
    )

### Request syntax

    svc$get_block(
      Name = "string",
      BlockAddress = list(
        IonText = "string"
      ),
      DigestTipAddress = list(
        IonText = "string"
      )
    )
