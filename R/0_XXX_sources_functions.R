# FONCTIONS FOR : WARMING EFFECTS ON LIZARD GUT MICROBIOTA DEPENDS ON HABITAT CONNECTIVITY

# finished on 2023-05-30
# author : XXX

# Dredge function

dredge_function=function(mod)
{
  require(MuMIn)
  options(na.action=na.fail)
  mods=dredge(mod)
  bestmods=get.models(mods,subset = delta < 2)
  if(length(bestmods)==1)
  {
    print(summary(bestmods[[1]]))
  }
  else
  {
    print(summary(model.avg(bestmods)))
  }  
  options(na.action=na.omit)
}

# Relative importance

relative_importance=function(mod)
{
  options(na.action=na.fail)
  mods=dredge(mod)
  bestmods=get.models(mods,subset = delta < 2)
  if(length(bestmods)==1)
  {
    print("Only one model")
  }
  else
  {
    print(sw(bestmods))
  }  
  options(na.action=na.omit)
}

#centering with 'scale()'
center_scale <- function(x) {
  scale(x, scale = FALSE)
}


# Used in ANCOM SCRIPT
#by Anne-Sophie Benoiston
metabarlist_to_phyloseq <- function(metabarlist, tax_colnames, include_controls = FALSE){
  if(suppressWarnings(check_metabarlist(metabarlist))){
    if(!include_controls){
      if(!setequal(rownames(metabarlist$pcrs), rownames(metabarlist$samples))){
        stop("The pcrs and samples tables should have the same row names and not include controls.")
      }
    }
    else if(setequal(rownames(metabarlist$pcrs), rownames(metabarlist$samples))){
      warning("The pcrs and samples tables have the same row names, so it seems that you are not including controls in the phyloseq object.")
    }
    otu <- otu_table(metabarlist$reads, taxa_are_rows = FALSE)
    sample <- merge(metabarlist$samples, metabarlist$pcrs, by="row.names", all=TRUE)
    rownames(sample) <- sample$Row.names
    sample$Row.names <- NULL
    sample <- sample_data(sample)
    tax <- tax_table(as.matrix(metabarlist$motus[,tax_colnames]))
    return(phyloseq(otu, sample, tax))
  }
}

## PLOTS 
## Theme for general figures
theme_fig <- theme_bw() +
  theme(panel.grid = element_blank(), 
        strip.background=element_blank(),
        axis.title=element_text(face="bold", size=15),
        axis.text=element_text(size=13), 
        strip.text=element_text(face="bold", size=15),
        legend.position = "none",
        legend.title = element_text(size=15), 
        legend.text = element_text(size=14),
        panel.border = element_rect(colour = "black"))


# Theme for fig by phylum
theme_fig_by_phylum <- theme_bw() +
  theme(panel.grid = element_blank(), 
        strip.background=element_blank(),
        axis.title=element_text(face="bold", size=17),
        axis.text=element_text(size=15), 
        strip.text=element_text(face="bold", size=17),
        legend.position = "none",
        legend.title = element_text(size=17), 
        legend.text = element_text(size=16),
        panel.border = element_rect(colour = "black"), 
        plot.title = element_text(size=17, face="bold"))


# Label names for climatic treatments
climate.labs <- c("Present-day", "Warm")
names(climate.labs) <- c("T28", "T38")

# Label names for Years 
years.labs1 <- c("Year0", "Year1", "Year2", "Year3")
names(years.labs1) <- c("2015", "2016", "2017", "2018")

years.labs2 <- c("Year1", "Year2", "Year3")
names(years.labs2) <- c("2016", "2017", "2018")

