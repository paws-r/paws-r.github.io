<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_get_metric_widget_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You can use the GetMetricWidgetImage API to retrieve a snapshot graph of one or more Amazon CloudWatch metrics as a bitmap image

### Description

You can use the `get_metric_widget_image` API to retrieve a snapshot
graph of one or more Amazon CloudWatch metrics as a bitmap image. You
can then embed this image into your services and products, such as wiki
pages, reports, and documents. You could also retrieve images regularly,
such as every minute, and create your own custom live dashboard.

The graph you retrieve can include all CloudWatch metric graph features,
including metric math and horizontal and vertical annotations.

There is a limit of 20 transactions per second for this API. Each
`get_metric_widget_image` action has the following limits:

-   As many as 100 metrics in the graph.

-   Up to 100 KB uncompressed payload.

### Usage

    cloudwatch_get_metric_widget_image(MetricWidget, OutputFormat)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_get_metric_widget_image_:_MetricWidget">MetricWidget</code></td>
<td><p>[required] A JSON string that defines the bitmap graph to be
retrieved. The string includes the metrics to include in the graph,
statistics, annotations, title, axis limits, and so on. You can include
only one <code>MetricWidget</code> parameter in each
<code>get_metric_widget_image</code> call.</p>
<p>For more information about the syntax of <code>MetricWidget</code>
see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Metric-Widget-Structure.html">GetMetricWidgetImage:
Metric Widget Structure and Syntax</a>.</p>
<p>If any metric on the graph could not load all the requested data
points, an orange triangle with an exclamation point appears next to the
graph legend.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_get_metric_widget_image_:_OutputFormat">OutputFormat</code></td>
<td><p>The format of the resulting image. Only PNG images are
supported.</p>
<p>The default is <code>png</code>. If you specify <code>png</code>, the
API returns an HTTP response with the content-type set to
<code>text/xml</code>. The image data is in a
<code>MetricWidgetImage</code> field. For example:</p>
<p><code
style="white-space: pre;">⁠ &lt;GetMetricWidgetImageResponse xmlns=&lt;URLstring&gt;&gt;⁠</code></p>
<p><code
style="white-space: pre;">⁠ &lt;GetMetricWidgetImageResult&gt;⁠</code></p>
<p><code style="white-space: pre;">⁠ &lt;MetricWidgetImage&gt;⁠</code></p>
<p><code> iVBORw0KGgoAAAANSUhEUgAAAlgAAAGQEAYAAAAip...</code></p>
<p><code
style="white-space: pre;">⁠ &lt;/MetricWidgetImage&gt;⁠</code></p>
<p><code
style="white-space: pre;">⁠ &lt;/GetMetricWidgetImageResult&gt;⁠</code></p>
<p><code style="white-space: pre;">⁠ &lt;ResponseMetadata&gt;⁠</code></p>
<p><code
style="white-space: pre;">⁠ &lt;RequestId&gt;6f0d4192-4d42-11e8-82c1-f539a07e0e3b&lt;/RequestId&gt;⁠</code></p>
<p><code style="white-space: pre;">⁠ &lt;/ResponseMetadata&gt;⁠</code></p>
<p><code
style="white-space: pre;">⁠&lt;/GetMetricWidgetImageResponse&gt;⁠</code></p>
<p>The <code>image/png</code> setting is intended only for custom HTTP
requests. For most use cases, and all actions using an Amazon Web
Services SDK, you should use <code>png</code>. If you specify
<code>image/png</code>, the HTTP response has a content-type set to
<code>image/png</code>, and the body of the response is a PNG
image.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MetricWidgetImage = raw
    )

### Request syntax

    svc$get_metric_widget_image(
      MetricWidget = "string",
      OutputFormat = "string"
    )
