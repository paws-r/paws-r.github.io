<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_cancel_journal_kinesis_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Ends a given Amazon QLDB journal stream

### Description

Ends a given Amazon QLDB journal stream. Before a stream can be
canceled, its current status must be `ACTIVE`.

You can't restart a stream after you cancel it. Canceled QLDB stream
resources are subject to a 7-day retention period, so they are
automatically deleted after this limit expires.

### Usage

    qldb_cancel_journal_kinesis_stream(LedgerName, StreamId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="qldb_cancel_journal_kinesis_stream_:_LedgerName">LedgerName</code></td>
<td><p>[required] The name of the ledger.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_cancel_journal_kinesis_stream_:_StreamId">StreamId</code></td>
<td><p>[required] The UUID (represented in Base62-encoded text) of the
QLDB journal stream to be canceled.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamId = "string"
    )

### Request syntax

    svc$cancel_journal_kinesis_stream(
      LedgerName = "string",
      StreamId = "string"
    )
