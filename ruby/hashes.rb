#5.5 Nested Data Structures
#by Forrest Wortham

basketball = {
  grizzlies:{
    city: 'memphis',
    position: {
        pg: 'mike',
        c: 'marc',
        sf: 'barnes',
        pf: 'zbo',
        sg: 'tony'
        },
      established: 2001
    },

  bulls:{
    city: 'chicago',
    position: {
        pg: 'd-rose',
        c: 'soft gasol',
        sf: 'butler',
        pf: 'billy',
        sg: 'sarah',
        },
    established: 1960
  },

  warriors: {
    city: 'oakland',
    position: {
        pg: 'stephanie',
        c: 'bogus',
        sf: 'barnes',
        pf: 'dremond',
        sg: 'thompson'
        },
    established: 1985
  }

}

# prints out the hash
p basketball

# prints out positions on the grizzlies basketball team.
p basketball[:grizzlies][:position]

#prints the year the bulls basketball team was established.
p basketball[:bulls][:established]

#prints who the PF is for the Warriors.
p basketball[:warriors][:position][:pf]

#Changes the SF position for the Grizzlies from barnes to durantula
basketball[:grizzlies][:position].store(:sf, 'durantula')
p basketball[:grizzlies][:position]
