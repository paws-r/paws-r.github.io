<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_get_experiment_results</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the results of a running or completed experiment

### Description

Retrieves the results of a running or completed experiment. No results
are available until there have been 100 events for each variation and at
least 10 minutes have passed since the start of the experiment. To
increase the statistical power, Evidently performs an additional offline
p-value analysis at the end of the experiment. Offline p-value analysis
can detect statistical significance in some cases where the anytime
p-values used during the experiment do not find statistical
significance.

Experiment results are available up to 63 days after the start of the
experiment. They are not available after that because of CloudWatch data
retention policies.

### Usage

    cloudwatchevidently_get_experiment_results(baseStat, endTime,
      experiment, metricNames, period, project, reportNames, resultStats,
      startTime, treatmentNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_get_experiment_results_:_baseStat">baseStat</code></td>
<td><p>The statistic used to calculate experiment results. Currently the
only valid value is <code>mean</code>, which uses the mean of the
collected values as the statistic.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_get_experiment_results_:_endTime">endTime</code></td>
<td><p>The date and time that the experiment ended, if it is completed.
This must be no longer than 30 days after the experiment start
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_get_experiment_results_:_experiment">experiment</code></td>
<td><p>[required] The name of the experiment to retrieve the results
of.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_get_experiment_results_:_metricNames">metricNames</code></td>
<td><p>[required] The names of the experiment metrics that you want to
see the results of.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_get_experiment_results_:_period">period</code></td>
<td><p>In seconds, the amount of time to aggregate results
together.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_get_experiment_results_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
experiment that you want to see the results of.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_get_experiment_results_:_reportNames">reportNames</code></td>
<td><p>The names of the report types that you want to see. Currently,
<code>BayesianInference</code> is the only valid value.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_get_experiment_results_:_resultStats">resultStats</code></td>
<td><p>The statistics that you want to see in the returned results.</p>
<ul>
<li><p><code>PValue</code> specifies to use p-values for the results. A
p-value is used in hypothesis testing to measure how often you are
willing to make a mistake in rejecting the null hypothesis. A general
practice is to reject the null hypothesis and declare that the results
are statistically significant when the p-value is less than
0.05.</p></li>
<li><p><code>ConfidenceInterval</code> specifies a confidence interval
for the results. The confidence interval represents the range of values
for the chosen metric that is likely to contain the true difference
between the <code>baseStat</code> of a variation and the baseline.
Evidently returns the 95% confidence interval.</p></li>
<li><p><code>TreatmentEffect</code> is the difference in the statistic
specified by the <code>baseStat</code> parameter between each variation
and the default variation.</p></li>
<li><p><code>BaseStat</code> returns the statistical values collected
for the metric for each variation. The statistic uses the same statistic
specified in the <code>baseStat</code> parameter. Therefore, if
<code>baseStat</code> is <code>mean</code>, this returns the mean of the
values collected for each variation.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_get_experiment_results_:_startTime">startTime</code></td>
<td><p>The date and time that the experiment started.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_get_experiment_results_:_treatmentNames">treatmentNames</code></td>
<td><p>[required] The names of the experiment treatments that you want
to see the results for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      details = "string",
      reports = list(
        list(
          content = "string",
          metricName = "string",
          reportName = "BayesianInference",
          treatmentName = "string"
        )
      ),
      resultsData = list(
        list(
          metricName = "string",
          resultStat = "Mean"|"TreatmentEffect"|"ConfidenceIntervalUpperBound"|"ConfidenceIntervalLowerBound"|"PValue",
          treatmentName = "string",
          values = list(
            123.0
          )
        )
      ),
      timestamps = list(
        as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_experiment_results(
      baseStat = "Mean",
      endTime = as.POSIXct(
        "2015-01-01"
      ),
      experiment = "string",
      metricNames = list(
        "string"
      ),
      period = 123,
      project = "string",
      reportNames = list(
        "BayesianInference"
      ),
      resultStats = list(
        "BaseStat"|"TreatmentEffect"|"ConfidenceInterval"|"PValue"
      ),
      startTime = as.POSIXct(
        "2015-01-01"
      ),
      treatmentNames = list(
        "string"
      )
    )
