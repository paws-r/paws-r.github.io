<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_get_send_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides sending statistics for the current AWS Region

### Description

Provides sending statistics for the current AWS Region. The result is a
list of data points, representing the last two weeks of sending
activity. Each data point in the list contains statistics for a
15-minute period of time.

You can execute this operation no more than once per second.

### Usage

    ses_get_send_statistics()

### Value

A list with the following syntax:

    list(
      SendDataPoints = list(
        list(
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          DeliveryAttempts = 123,
          Bounces = 123,
          Complaints = 123,
          Rejects = 123
        )
      )
    )

### Examples

    ## Not run: 
    # The following example returns Amazon SES sending statistics:
    svc$get_send_statistics()

    ## End(Not run)
