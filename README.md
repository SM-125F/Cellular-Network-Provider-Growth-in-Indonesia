# Cellular-Network-Provider-Growth-in-Indonesia

## Introduction
This project is a simple data visualization project for Cellular Growth in Indonesia from 2013-2016. This project uses R for it's programming language to visualize and organize the dataset.

The original source file provide us the data with the following structure:

No | Penyelenggara | Brand | Tahun 2013 | Tahun 2014 | Tahun 2015 | Tahun 2016 |
---|----------|-------|------------|------------|------------|------------|

We can simplify it in the prepared file  to this following structure:
No | Penyelanggara | Brand | Tahun | Prabayar | Pascabayar | Jumlah |
---|----------|-------|-------|----------|------------|--------|

With this structure, we can easily filter which row will be needed for plot

## Subscriber Count
The first and the most general view that can be extracted by this data is the overall number of the subscriber for each provider by year.
![Subscriber Count Each Year](https://github.com/salmanzf/Cellular-Network-Provider-Growth-in-Indonesia/blob/main/Graph_SubscriberCount.png)
The graph shows that SIMPATI/HALO brand dominate the cellular network for each year. The brand is supported by provider PT. Telkomsel which is the branch of PT. Telkom Indonesia and the largest telecommunication company in Indonesia. Overall, the trends are each brand keep increasing on subscriber count except for AXIS, CERIA, and SMART.
