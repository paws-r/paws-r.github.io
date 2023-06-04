<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_batch_get_metric_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves batches of metric data collected based on your sending activity

### Description

Retrieves batches of metric data collected based on your sending
activity.

You can execute this operation no more than 16 times per second, and
with at most 160 queries from the batches per second (cumulative).

### Usage

    sesv2_batch_get_metric_data(Queries)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sesv2_batch_get_metric_data_:_Queries">Queries</code></td>
<td><p>[required] A list of queries for metrics to be
retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Results = list(
        list(
          Id = "string",
          Timestamps = list(
            as.POSIXct(
              "2015-01-01"
            )
          ),
          Values = list(
            123
          )
        )
      ),
      Errors = list(
        list(
          Id = "string",
          Code = "INTERNAL_FAILURE"|"ACCESS_DENIED",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_metric_data(
      Queries = list(
        list(
          Id = "string",
          Namespace = "VDM",
          Metric = "SEND"|"COMPLAINT"|"PERMANENT_BOUNCE"|"TRANSIENT_BOUNCE"|"OPEN"|"CLICK"|"DELIVERY"|"DELIVERY_OPEN"|"DELIVERY_CLICK"|"DELIVERY_COMPLAINT",
          Dimensions = list(
            "string"
          ),
          StartDate = as.POSIXct(
            "2015-01-01"
          ),
          EndDate = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )
