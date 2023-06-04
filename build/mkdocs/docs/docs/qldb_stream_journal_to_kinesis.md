<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_stream_journal_to_kinesis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a journal stream for a given Amazon QLDB ledger

### Description

Creates a journal stream for a given Amazon QLDB ledger. The stream
captures every document revision that is committed to the ledger's
journal and delivers the data to a specified Amazon Kinesis Data Streams
resource.

### Usage

    qldb_stream_journal_to_kinesis(LedgerName, RoleArn, Tags,
      InclusiveStartTime, ExclusiveEndTime, KinesisConfiguration, StreamName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="qldb_stream_journal_to_kinesis_:_LedgerName">LedgerName</code></td>
<td><p>[required] The name of the ledger.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_stream_journal_to_kinesis_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role that
grants QLDB permissions for a journal stream to write data records to a
Kinesis Data Streams resource.</p>
<p>To pass a role to QLDB when requesting a journal stream, you must
have permissions to perform the <code>iam:PassRole</code> action on the
IAM role resource. This is required for all journal stream
requests.</p></td>
</tr>
<tr class="odd">
<td><code id="qldb_stream_journal_to_kinesis_:_Tags">Tags</code></td>
<td><p>The key-value pairs to add as tags to the stream that you want to
create. Tag keys are case sensitive. Tag values are case sensitive and
can be null.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_stream_journal_to_kinesis_:_InclusiveStartTime">InclusiveStartTime</code></td>
<td><p>[required] The inclusive start date and time from which to start
streaming journal data. This parameter must be in <code
style="white-space: pre;">⁠ISO 8601⁠</code> date and time format and in
Universal Coordinated Time (UTC). For example: <code
style="white-space: pre;">⁠2019-06-13T21:36:34Z⁠</code>.</p>
<p>The <code>InclusiveStartTime</code> cannot be in the future and must
be before <code>ExclusiveEndTime</code>.</p>
<p>If you provide an <code>InclusiveStartTime</code> that is before the
ledger's <code>CreationDateTime</code>, QLDB effectively defaults it to
the ledger's <code>CreationDateTime</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="qldb_stream_journal_to_kinesis_:_ExclusiveEndTime">ExclusiveEndTime</code></td>
<td><p>The exclusive date and time that specifies when the stream ends.
If you don't define this parameter, the stream runs indefinitely until
you cancel it.</p>
<p>The <code>ExclusiveEndTime</code> must be in <code
style="white-space: pre;">⁠ISO 8601⁠</code> date and time format and in
Universal Coordinated Time (UTC). For example: <code
style="white-space: pre;">⁠2019-06-13T21:36:34Z⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="qldb_stream_journal_to_kinesis_:_KinesisConfiguration">KinesisConfiguration</code></td>
<td><p>[required] The configuration settings of the Kinesis Data Streams
destination for your stream request.</p></td>
</tr>
<tr class="odd">
<td><code
id="qldb_stream_journal_to_kinesis_:_StreamName">StreamName</code></td>
<td><p>[required] The name that you want to assign to the QLDB journal
stream. User-defined names can help identify and indicate the purpose of
a stream.</p>
<p>Your stream name must be unique among other <em>active</em> streams
for a given ledger. Stream names have the same naming constraints as
ledger names, as defined in <a
href="https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming">Quotas
in Amazon QLDB</a> in the <em>Amazon QLDB Developer Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StreamId = "string"
    )

### Request syntax

    svc$stream_journal_to_kinesis(
      LedgerName = "string",
      RoleArn = "string",
      Tags = list(
        "string"
      ),
      InclusiveStartTime = as.POSIXct(
        "2015-01-01"
      ),
      ExclusiveEndTime = as.POSIXct(
        "2015-01-01"
      ),
      KinesisConfiguration = list(
        StreamArn = "string",
        AggregationEnabled = TRUE|FALSE
      ),
      StreamName = "string"
    )
