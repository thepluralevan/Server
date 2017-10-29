# wgkeq patch 4
# Circles and Portals
# Vendors and Bots

# vendors

# cobalt scar
delete merchantlist from merchantlist
inner join items on items.id=merchantlist.`item`
where Name like '%Cobalt Scar%';

# great divide
delete merchantlist from merchantlist
inner join items on items.id=merchantlist.`item`
where Name like '%great divide%';

# wakening lands
delete merchantlist from merchantlist
inner join items on items.id=merchantlist.`item`
where Name like '%Wakening Lands%';

# iceclad
delete merchantlist from merchantlist
inner join items on items.id=merchantlist.`item`
where Name like '%iceclad%' and item <> 76006;

# dawnshroud
delete merchantlist from merchantlist
inner join items on items.id=merchantlist.`item`
where Name like '%dawnshroud%';

# nexus
delete merchantlist from merchantlist
inner join items on items.id=merchantlist.`item`
where Name like '%nexus%';

# knowledge
delete merchantlist from merchantlist
inner join items on items.id=merchantlist.`item`
where Name like '%Knowledge Gate%';

delete merchantlist from merchantlist
inner join items on items.id=merchantlist.`item`
where Name like '%Knowledge Portal%';

delete merchantlist from merchantlist
inner join items on items.id=merchantlist.`item`
where Name like '%Ring of Knowledge%';

delete merchantlist from merchantlist
inner join items on items.id=merchantlist.`item`
where Name like '%Circle of Knowledge%';

# grimling
delete merchantlist from merchantlist
inner join items on items.id=merchantlist.`item`
where Name like '%Grimling Portal%' or Name like '%Grimling Gate%' or Name like '%Ring of Grimling%' or Name like '%Circle of Grimling%';


# misc
delete merchantlist from merchantlist
inner join items on items.id=merchantlist.`item`
where Name like '%Blightfire%';

# bot spells
