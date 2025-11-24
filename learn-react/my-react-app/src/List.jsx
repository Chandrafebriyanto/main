function List(props) {
  const category = props.category;
    const itemList = props.items;

  const listItems = itemList.map((item) => (
    <li key={item.id}>
      {item.name}: &nbsp;
      <b>{item.calories}</b>
    </li>
  ));

  return (<>
    <h1 className="list-category">{category}</h1>
    <ol className="list-items">{listItems}</ol>
  </>)
}

export default List;
