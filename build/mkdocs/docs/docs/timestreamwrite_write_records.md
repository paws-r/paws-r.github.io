<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamwrite_write_records</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables you to write your time-series data into Timestream

### Description

Enables you to write your time-series data into Timestream. You can
specify a single data point or a batch of data points to be inserted
into the system. Timestream offers you a flexible schema that auto
detects the column names and data types for your Timestream tables based
on the dimension names and data types of the data points you specify
when invoking writes into the database.

Timestream supports eventual consistency read semantics. This means that
when you query data immediately after writing a batch of data into
Timestream, the query results might not reflect the results of a
recently completed write operation. The results may also include some
stale data. If you repeat the query request after a short time, the
results should return the latest data. [Service quotas
apply](https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html).

See [code
sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.write.html)
for details.

**Upserts**

You can use the `Version` parameter in a `write_records` request to
update data points. Timestream tracks a version number with each record.
`Version` defaults to `1` when it's not specified for the record in the
request. Timestream updates an existing record’s measure value along
with its `Version` when it receives a write request with a higher
`Version` number for that record. When it receives an update request
where the measure value is the same as that of the existing record,
Timestream still updates `Version`, if it is greater than the existing
value of `Version`. You can update a data point as many times as
desired, as long as the value of `Version` continuously increases.

For example, suppose you write a new record without indicating `Version`
in the request. Timestream stores this record, and set `Version` to `1`.
Now, suppose you try to update this record with a `write_records`
request of the same record with a different measure value but, like
before, do not provide `Version`. In this case, Timestream will reject
this update with a `RejectedRecordsException` since the updated record’s
version is not greater than the existing value of Version.

However, if you were to resend the update request with `Version` set to
`2`, Timestream would then succeed in updating the record’s value, and
the `Version` would be set to `2`. Next, suppose you sent a
`write_records` request with this same record and an identical measure
value, but with `Version` set to `3`. In this case, Timestream would
only update `Version` to `3`. Any further updates would need to send a
version number greater than `3`, or the update requests would receive a
`RejectedRecordsException`.

### Usage

    timestreamwrite_write_records(DatabaseName, TableName, CommonAttributes,
      Records)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamwrite_write_records_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the Timestream database.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_write_records_:_TableName">TableName</code></td>
<td><p>[required] The name of the Timestream table.</p></td>
</tr>
<tr class="odd">
<td><code
id="timestreamwrite_write_records_:_CommonAttributes">CommonAttributes</code></td>
<td><p>A record that contains the common measure, dimension, time, and
version attributes shared across all the records in the request. The
measure and dimension attributes specified will be merged with the
measure and dimension attributes in the records object when the data is
written into Timestream. Dimensions may not overlap, or a
<code>ValidationException</code> will be thrown. In other words, a
record must contain dimensions with unique names.</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamwrite_write_records_:_Records">Records</code></td>
<td><p>[required] An array of records that contain the unique measure,
dimension, time, and version attributes for each time-series data
point.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RecordsIngested = list(
        Total = 123,
        MemoryStore = 123,
        MagneticStore = 123
      )
    )

### Request syntax

    svc$write_records(
      DatabaseName = "string",
      TableName = "string",
      CommonAttributes = list(
        Dimensions = list(
          list(
            Name = "string",
            Value = "string",
            DimensionValueType = "VARCHAR"
          )
        ),
        MeasureName = "string",
        MeasureValue = "string",
        MeasureValueType = "DOUBLE"|"BIGINT"|"VARCHAR"|"BOOLEAN"|"TIMESTAMP"|"MULTI",
        Time = "string",
        TimeUnit = "MILLISECONDS"|"SECONDS"|"MICROSECONDS"|"NANOSECONDS",
        Version = 123,
        MeasureValues = list(
          list(
            Name = "string",
            Value = "string",
            Type = "DOUBLE"|"BIGINT"|"VARCHAR"|"BOOLEAN"|"TIMESTAMP"|"MULTI"
          )
        )
      ),
      Records = list(
        list(
          Dimensions = list(
            list(
              Name = "string",
              Value = "string",
              DimensionValueType = "VARCHAR"
            )
          ),
          MeasureName = "string",
          MeasureValue = "string",
          MeasureValueType = "DOUBLE"|"BIGINT"|"VARCHAR"|"BOOLEAN"|"TIMESTAMP"|"MULTI",
          Time = "string",
          TimeUnit = "MILLISECONDS"|"SECONDS"|"MICROSECONDS"|"NANOSECONDS",
          Version = 123,
          MeasureValues = list(
            list(
              Name = "string",
              Value = "string",
              Type = "DOUBLE"|"BIGINT"|"VARCHAR"|"BOOLEAN"|"TIMESTAMP"|"MULTI"
            )
          )
        )
      )
    )
