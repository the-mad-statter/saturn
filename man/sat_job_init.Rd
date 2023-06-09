% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sat.R
\name{sat_job_init}
\alias{sat_job_init}
\title{Saturn Job Initialize}
\usage{
sat_job_init(
  job_name,
  spath = ".",
  nodes = 1,
  ppn = 4,
  user = Sys.getenv("WUSTL_KEY_USER"),
  property = c("", "R", "SAS", "MPlus", "EL7"),
  walltime = "00:00:00",
  queue = c("fast", "quick", "batch", "interactive"),
  M,
  m = "abe",
  edit_script = TRUE,
  add_cron = FALSE,
  cron_schedule = "* * * * *"
)
}
\arguments{
\item{job_name}{job name}

\item{spath}{directory on the destination where files will be copied into}

\item{nodes}{number of nodes}

\item{ppn}{processors per node}

\item{user}{user account}

\item{property}{requested node property}

\item{walltime}{total time requested for the job}

\item{queue}{queue name (note, this will be auto redirected depending on
resource request)}

\item{M}{email address to send notifications}

\item{m}{email notifications: (a) abort, (b) begin, (e) end}

\item{edit_script}{open script for editing}

\item{add_cron}{add cron file for job scheduling}

\item{cron_schedule}{cron schedule}
}
\description{
Saturn Job Initialize
}
\details{
A crontab file has five scheduling fields:
\tabular{ll}{
\strong{Field} \tab
\strong{Details} \cr
Minute \tab
minute of the hour the command will run on, ranging from 0 to 59. \cr
Hour \tab
on what hour the command will run on, ranging from 0 to 23. \cr
Day of Month \tab
on what day of the month you want the command run, ranging from 1 to 31. \cr
Month \tab
on what month will the specified command run on, ranging from 1 to 12. \cr
Day of Week \tab
on what day of the week you want a command run, ranging from 0 to 7. \cr
}

Use of these fields can be extended with:
\tabular{ll}{
\strong{Value} \tab
\strong{Details} \cr
Asterisk (*) \tab
to define all the scheduling parameter \cr
Comma (,) \tab
to maintain two or more execution times of a single command \cr
Hyphen (-) \tab
to determine the range of time when setting several execution times of a
single command \cr
Slash (/) \tab
for creating predetermined intervals of time in a specific range \cr
Last (L) \tab
for the specific purpose to determine the last day of the week in a given
month. For example, 3L means the last Wednesday \cr
Weekday (W) \tab
to determine the closest weekday of a given time. For example, 1W means if
the 1st is a Saturday, the command will run on Monday (the 3rd) \cr
Hash (#) \tab
for determining the day of the week, followed by a number ranging from 1 to
5. For example, 1#2 means the second Monday \cr
Question mark (?) \tab
to leave blank \cr
}
}
\examples{
\dontrun{
job_name <- "my_job"
sat_job_init(job_name)
}

}
