<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_put_telemetry_records</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used by the Amazon Web Services X-Ray daemon to upload telemetry

### Description

Used by the Amazon Web Services X-Ray daemon to upload telemetry.

### Usage

    xray_put_telemetry_records(TelemetryRecords, EC2InstanceId, Hostname,
      ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_put_telemetry_records_:_TelemetryRecords">TelemetryRecords</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="xray_put_telemetry_records_:_EC2InstanceId">EC2InstanceId</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="xray_put_telemetry_records_:_Hostname">Hostname</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="xray_put_telemetry_records_:_ResourceARN">ResourceARN</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_telemetry_records(
      TelemetryRecords = list(
        list(
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          SegmentsReceivedCount = 123,
          SegmentsSentCount = 123,
          SegmentsSpilloverCount = 123,
          SegmentsRejectedCount = 123,
          BackendConnectionErrors = list(
            TimeoutCount = 123,
            ConnectionRefusedCount = 123,
            HTTPCode4XXCount = 123,
            HTTPCode5XXCount = 123,
            UnknownHostCount = 123,
            OtherCount = 123
          )
        )
      ),
      EC2InstanceId = "string",
      Hostname = "string",
      ResourceARN = "string"
    )
