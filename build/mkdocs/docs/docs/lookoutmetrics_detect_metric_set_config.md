<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_detect_metric_set_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects an Amazon S3 dataset's file format, interval, and offset

### Description

Detects an Amazon S3 dataset's file format, interval, and offset.

### Usage

    lookoutmetrics_detect_metric_set_config(AnomalyDetectorArn,
      AutoDetectionMetricSource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_detect_metric_set_config_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] An anomaly detector ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_detect_metric_set_config_:_AutoDetectionMetricSource">AutoDetectionMetricSource</code></td>
<td><p>[required] A data source.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DetectedMetricSetConfig = list(
        Offset = list(
          Value = list(
            S = "string",
            N = "string",
            B = "string",
            SS = list(
              "string"
            ),
            NS = list(
              "string"
            ),
            BS = list(
              "string"
            )
          ),
          Confidence = "HIGH"|"LOW"|"NONE",
          Message = "string"
        ),
        MetricSetFrequency = list(
          Value = list(
            S = "string",
            N = "string",
            B = "string",
            SS = list(
              "string"
            ),
            NS = list(
              "string"
            ),
            BS = list(
              "string"
            )
          ),
          Confidence = "HIGH"|"LOW"|"NONE",
          Message = "string"
        ),
        MetricSource = list(
          S3SourceConfig = list(
            FileFormatDescriptor = list(
              CsvFormatDescriptor = list(
                FileCompression = list(
                  Value = list(
                    S = "string",
                    N = "string",
                    B = "string",
                    SS = list(
                      "string"
                    ),
                    NS = list(
                      "string"
                    ),
                    BS = list(
                      "string"
                    )
                  ),
                  Confidence = "HIGH"|"LOW"|"NONE",
                  Message = "string"
                ),
                Charset = list(
                  Value = list(
                    S = "string",
                    N = "string",
                    B = "string",
                    SS = list(
                      "string"
                    ),
                    NS = list(
                      "string"
                    ),
                    BS = list(
                      "string"
                    )
                  ),
                  Confidence = "HIGH"|"LOW"|"NONE",
                  Message = "string"
                ),
                ContainsHeader = list(
                  Value = list(
                    S = "string",
                    N = "string",
                    B = "string",
                    SS = list(
                      "string"
                    ),
                    NS = list(
                      "string"
                    ),
                    BS = list(
                      "string"
                    )
                  ),
                  Confidence = "HIGH"|"LOW"|"NONE",
                  Message = "string"
                ),
                Delimiter = list(
                  Value = list(
                    S = "string",
                    N = "string",
                    B = "string",
                    SS = list(
                      "string"
                    ),
                    NS = list(
                      "string"
                    ),
                    BS = list(
                      "string"
                    )
                  ),
                  Confidence = "HIGH"|"LOW"|"NONE",
                  Message = "string"
                ),
                HeaderList = list(
                  Value = list(
                    S = "string",
                    N = "string",
                    B = "string",
                    SS = list(
                      "string"
                    ),
                    NS = list(
                      "string"
                    ),
                    BS = list(
                      "string"
                    )
                  ),
                  Confidence = "HIGH"|"LOW"|"NONE",
                  Message = "string"
                ),
                QuoteSymbol = list(
                  Value = list(
                    S = "string",
                    N = "string",
                    B = "string",
                    SS = list(
                      "string"
                    ),
                    NS = list(
                      "string"
                    ),
                    BS = list(
                      "string"
                    )
                  ),
                  Confidence = "HIGH"|"LOW"|"NONE",
                  Message = "string"
                )
              ),
              JsonFormatDescriptor = list(
                FileCompression = list(
                  Value = list(
                    S = "string",
                    N = "string",
                    B = "string",
                    SS = list(
                      "string"
                    ),
                    NS = list(
                      "string"
                    ),
                    BS = list(
                      "string"
                    )
                  ),
                  Confidence = "HIGH"|"LOW"|"NONE",
                  Message = "string"
                ),
                Charset = list(
                  Value = list(
                    S = "string",
                    N = "string",
                    B = "string",
                    SS = list(
                      "string"
                    ),
                    NS = list(
                      "string"
                    ),
                    BS = list(
                      "string"
                    )
                  ),
                  Confidence = "HIGH"|"LOW"|"NONE",
                  Message = "string"
                )
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$detect_metric_set_config(
      AnomalyDetectorArn = "string",
      AutoDetectionMetricSource = list(
        S3SourceConfig = list(
          TemplatedPathList = list(
            "string"
          ),
          HistoricalDataPathList = list(
            "string"
          )
        )
      )
    )
